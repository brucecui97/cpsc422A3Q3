#!/bin/bash

#comment

echo "Hello World"

declare -r CLAUSE_LENGTH=3
declare -r NUM_VARIABLES=20

for num_clauses in 20 40 60 80 100 120 140 160 180 200
do
    echo $num_clauses
    #generated_problem=$(./makewff -cnf $CLAUSE_LENGTH $NUM_VARIABLES $num_clauses)
    
    output=$(./makewff -cnf $CLAUSE_LENGTH $NUM_VARIABLES $num_clauses|./walksat)

    #echo $output
    found_string=$(echo "$output" | tail -n1)
    echo $found_string
done

