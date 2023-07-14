student:
    .word   0          # id_number
    .space  18         # first_name
    .space  15         # last_name
    .float  0.0        # grade

# define MAX_STUDENTS
MAX_STUDENTS: .word 4

# function prototypes
read_data:
.SIZE 4
max:

print_student:

# main function
main:
    # Declare st_array as static array of student structs
    .data
    st_array: .space SIZE 

    # Declare media as static float variable
    media: .float 0.0

    # Declare pmax as a pointer to student struct
    pmax: .space 4

    # Call read_data function to read student data into st_array
    la $a0, st_array # Load st_array address into $a0
    li $a1, MAX_STUDENTS # Load MAX_STUDENTS into $a1
    jal read_data # Call read_data function

    # Call max function to find maximum student and calculate media
    la $a0, st_array # Load st_array address into $a0
    li $a1, MAX_STUDENTS # Load MAX_STUDENTS into $a1
    la $a2, media # Load media address into $a2
    jal max # Call max function

    # Store returned maximum student pointer in pmax
    sw $v0, pmax # Store maximum student pointer in pmax

    # Print media and maximum student
    la $a0, message1 # Load message1 address into $a0
    li $v0, 4 # 4 is the syscall code for printing a string
    syscall # Print message1

    lwc1 $f12, media # Load media value into $f12
    li $v0, 2 # 2 is the syscall code for printing a float
    syscall # Print media

    lw $a0, pmax # Load pmax into $a0
    jal print_student # Call print_student function

    # Return 0
    li $v0, 0 # Load 0 into $v0 to indicate success
    jr $ra # Return from main function

message1: .asciiz "\nMedia: " # String to print before media value