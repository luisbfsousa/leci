import random
import string
from typing import NamedTuple

from pyodbc import IntegrityError

from persistence.session import create_connection


class CustomerDescriptor(NamedTuple):
    id: str
    contact_name: str
    company_name: str


class CustomerDetails(NamedTuple):
    company_name: str
    contact_name: str
    contact_title: str
    address: str
    city: str
    region: str
    postal_code: str
    country: str
    phone: str
    fax: str


def list_all() -> list[CustomerDescriptor]:
    with create_connection() as conn:
        cursor = conn.cursor()
        cursor.execute("SELECT CustomerID, ContactName, CompanyName FROM Customers;")

        return list(map(lambda row: CustomerDescriptor(row.CustomerID, row.ContactName, row.CompanyName), cursor))


def read(c_id: str):
    with create_connection() as conn:
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM Customers WHERE CustomerID = ?;", c_id)
        row = cursor.fetchone()

        return row.CustomerID, CustomerDetails(
            row.CompanyName,
            row.ContactName or "",
            row.ContactTitle or "",
            row.Address or "",
            row.City or "",
            row.Region or "",
            row.PostalCode or "",
            row.Country or "",
            "",
            "",
        )


def create(customer: CustomerDetails):
    id_str = "".join(random.choices(string.ascii_uppercase + string.digits, k=4))

    with create_connection() as conn:
        cursor = conn.cursor()
        cursor.execute(
            """
            INSERT INTO Customers(
                CustomerID, CompanyName, ContactName, ContactTitle, 
                Address, City, Region, PostalCode, Country, Phone, Fax) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
            """,
            id_str,
            customer.company_name,
            customer.contact_name,
            customer.contact_title,
            customer.address,
            customer.city,
            customer.region,
            customer.postal_code,
            customer.country,
            customer.phone,
            customer.fax,
        )

        cursor.commit()


def update(c_id: str, customer: CustomerDetails):
    raise NotImplementedError()


def delete(c_id: str):
    with create_connection() as conn:
        cursor = conn.cursor()
        try:
            cursor.execute("DELETE Customers WHERE CustomerID = ?;", c_id)
            cursor.commit()
        except IntegrityError as ex:
            if ex.args[0] == "23000":
                raise Exception(f"Customer {c_id} cannot be deleted. Probably has orders.") from ex
