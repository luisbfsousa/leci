from flask import Flask, make_response, render_template, render_template_string, request

from persistence import customers
from persistence.customers import CustomerDetails

app = Flask(__name__)


@app.route("/")
def base():
    contacts = customers.list_all()
    return render_template("index.html", customers=contacts)


@app.route("/contact-list", methods=["GET"])
def contact_list():
    contacts = customers.list_all()
    return render_template("contact_list.html", customers=contacts)


@app.route("/customers", methods=["GET"])
def new_customer_details():
    return render_template("customer_details_form.html")


@app.route("/customers", methods=["POST"])
def new_customer_create():
    new_details = CustomerDetails(**request.form)
    customers.create(new_details)

    response = make_response(render_template_string(f"Customer {new_details.company_name} created successfully!"))
    response.headers["HX-Trigger"] = "refreshContactList"

    return response


@app.route("/customers/<customer_id>", methods=["GET"])
def customer_details(customer_id: str):
    customer_id, details = customers.read(customer_id)
    template = "customer_details_view.html" if not request.args.get("edit") else "customer_details_form.html"
    return render_template(template, customer_id=customer_id, customer=details)


@app.route("/customers/<customer_id>", methods=["POST"])
def customer_update(customer_id: str):
    new_details = CustomerDetails(**request.form)
    customers.update(customer_id, new_details)

    response = make_response(render_template_string(f"Customer {customer_id} updated successfully!"))
    response.headers["HX-Trigger"] = "refreshContactList"

    return response


@app.route("/customers/<customer_id>", methods=["DELETE"])
def customer_delete(customer_id: str):
    try:
        customers.delete(customer_id)

        response = make_response(render_template_string(f"Customer {customer_id} deleted successfully!"))
        response.headers["HX-Trigger"] = "refreshContactList"

        return response
    except Exception as ex:
        r = make_response(render_template_string(f"{ex}"))
        return r


if __name__ == "__main__":
    app.run(debug=True)
