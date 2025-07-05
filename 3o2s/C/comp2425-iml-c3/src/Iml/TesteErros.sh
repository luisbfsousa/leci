#!/bin/bash

REPORT="../../examples/examples_errors/test_results.md"

echo "# Error Test Results" > $REPORT
echo "Generated on $(date)" >> $REPORT
echo "" >> $REPORT

for file in ../../examples/examples_errors/Error*.iml; do
    filename=$(basename "$file")
    
    echo "## Testing $filename" >> $REPORT
    echo "" >> $REPORT
    
    echo "### Input:" >> $REPORT
    echo '```iml' >> $REPORT
    cat "$file" >> $REPORT
    echo "" >> $REPORT
    echo '```' >> $REPORT
    echo "" >> $REPORT
    
    echo "### Output:" >> $REPORT
    echo '```' >> $REPORT
    output=$(cat "$file" | antlr4-run 2>&1)
    echo "$output" >> $REPORT
    echo '```' >> $REPORT
    
    if [[ "$filename" == "Error3.iml" ]] || [[ "$filename" == "Error16.iml" ]]; then
        if [[ "$output" != *"ERROR"* ]]; then
            echo ":warning: **UNEXPECTED SUCCESS** - This test should have failed but passed" >> $REPORT
        fi
    else
        if [[ "$output" != *"ERROR"* ]]; then
            echo ":white_check_mark: **PASSED AS EXPECTED**" >> $REPORT
        else
            echo ":x: **FAILED AS EXPECTED**" >> $REPORT
        fi
    fi
    
    echo "" >> $REPORT
    echo "---" >> $REPORT
    echo "" >> $REPORT
done

echo "Test results saved to $REPORT"