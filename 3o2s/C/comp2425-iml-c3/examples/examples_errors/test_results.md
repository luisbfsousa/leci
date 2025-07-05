# Error Test Results
Generated on Mon Jun  2 01:49:28 PM WEST 2025

## Testing Error10.iml

### Input:
```iml
//ERROR: Pixel operation requires IMAGE with IMAGE or numeric
//ERROR: expression is null

image i is load from "images/sample00.pgm"
i is i .* "2.0"
```

### Output:
```
[[0;31mERROR[0m] 5: ERROR: Pixel operation '.*' requires IMAGE .* (NUMBER|PERCENTAGE), found IMAGE .* STRING
[[0;31mERROR[0m] 5: ERROR: Invalid expression in assignment
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

## Testing Error11.iml

### Input:
```iml
//ERROR: Numeric operator + requires numeric operands
//ERROR: expression is null


image i is load from "images/sample00.pgm"  
number result is "hello" + 10  
```

### Output:
```
[[0;31mERROR[0m] ERROR: Numeric operator + requires numeric operands
[[0;31mERROR[0m] 6: ERROR: Invalid expression in assignment
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

## Testing Error12.iml

### Input:
```iml
//ERROR: Expected LIST type for n, found NUMBER

number n is 10  
n append 20 
```

### Output:
```
[[0;31mERROR[0m] ERROR: Expected LIST type for n, found NUMBER
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

## Testing Error13.iml

### Input:
```iml
//line 2:5 mismatched input 'l' expecting 'of'

image i is load from "images/sample00.pgm"  
list l is [10, 20, i]  
```

### Output:
```
line 4:5 mismatched input 'l' expecting 'of'
```
:white_check_mark: **PASSED AS EXPECTED**

---

## Testing Error14.iml

### Input:
```iml
//line 2:0 extraneous input 'string' expecting {<EOF>, 'draw', 'if', 'until', 'for', 'image', 'output', 'number', 'list', ID}

number n is 10  
string s is "hello"  
image result is n .+ s  
```

### Output:
```
line 4:0 extraneous input 'string' expecting {<EOF>, 'draw', 'if', 'until', 'for', 'image', 'output', 'number', 'list', ID}
```
:white_check_mark: **PASSED AS EXPECTED**

---

## Testing Error15.iml

### Input:
```iml
//ERROR: Undefined collection: nonexistent

for x within nonexistent do  
   output x  
done  
```

### Output:
```
[[0;31mERROR[0m] ERROR: Undefined collection: nonexistent
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

## Testing Error17.iml

### Input:
```iml
//ERROR: Undefined variable: nonexistent

output nonexistent  
```

### Output:
```
[[0;31mERROR[0m] ERROR: Undefined variable: nonexistent
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

## Testing Error18.iml

### Input:
```iml
//line 1:0 extraneous input 'string' expecting {<EOF>, 'draw', 'if', 'until', 'for', 'image', 'output', 'number', 'list', ID}

string s is read "" 
```

### Output:
```
line 3:0 extraneous input 'string' expecting {<EOF>, 'draw', 'if', 'until', 'for', 'image', 'output', 'number', 'list', ID}
```
:white_check_mark: **PASSED AS EXPECTED**

---

## Testing Error1.iml

### Input:
```iml
//ERROR: Undefined variable: j

image i is load from "images/sample00.pgm"
draw j
```

### Output:
```
[[0;31mERROR[0m] ERROR: Undefined variable: j
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

## Testing Error3.iml

### Input:
```iml
//ERROR: Type mismatch for variable 'n': expected NUMBER, found IMAGE

//it compiles intead of error

image i is load from "images/sample00.pgm"
number n is i
```

### Output:
```
[[0;31mERROR[0m] ERROR: Cannot convert IMAGE to NUMBER for variable 'n'
Semantic errors found in the input program.
```

---

## Testing Error4.iml

### Input:
```iml
//ERROR: Pixel operation requires IMAGE with IMAGE or numeric
//ERROR: expression is null

image i is load from "images/sample00.pgm"
image s is load from "images/sample01.pgm"
image r is i .+ "hello"

```

### Output:
```
[[0;31mERROR[0m] Type mismatch in pixel operation: expected IMAGE with IMAGE or numeric, found IMAGE and STRING
[[0;31mERROR[0m] 6: ERROR: Invalid expression in assignment
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

## Testing Error5.iml

### Input:
```iml
//ERROR: Condition in if statement must be BOOLEAN, found IMAGE

image i is load from "images/sample00.pgm"
if i then
   output "hello"
done

```

### Output:
```
[[0;31mERROR[0m] ERROR: Condition in if statement must be BOOLEAN, found IMAGE
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

## Testing Error6.iml

### Input:
```iml
//ERROR: Expected LIST or IMAGE for collection 'n', found NUMBER

number n is 42
for x within n do
   output x
done
```

### Output:
```
[[0;31mERROR[0m] ERROR: Expected LIST or IMAGE for collection 'n', found NUMBER
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

## Testing Error7.iml

### Input:
```iml
//ERROR: Type mismatch in list: expected PERCENTAGE, found STRING

//line 3:5 extraneous input 'l' expecting 'of'
//line 3:21 missing ID at 'is'

list l of percentage is [10%, 5]
```

### Output:
```
line 6:5 extraneous input 'l' expecting 'of'
line 6:21 missing ID at 'is'
```
:white_check_mark: **PASSED AS EXPECTED**

---

## Testing Error8.iml

### Input:
```iml
//ERROR: Can only convert NUMBER or PERCENTAGE to IMAGE

//line 4:22 no viable alternative at input 'asimage'
//line 4:27 mismatched input '<EOF>' expecting ID

number n is 10
image i is "hello" as image
```

### Output:
```
line 7:22 no viable alternative at input 'asimage'
line 7:27 mismatched input '<EOF>' expecting ID
```
:white_check_mark: **PASSED AS EXPECTED**

---

## Testing Error9.iml

### Input:
```iml
//ERROR: Variable 'n' is not of type IMAGE
//ERROR: expression is null

image i is load from "images/sample00.pgm"
number n is 10
image r is i open by n
```

### Output:
```
[[0;31mERROR[0m] ERROR: Variable 'n' is not of type IMAGE
[[0;31mERROR[0m] 6: ERROR: Invalid expression in assignment
Semantic errors found in the input program.
```
:x: **FAILED AS EXPECTED**

---

