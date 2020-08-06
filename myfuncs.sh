#!/usr/bin/env bash
# File: pracfuncs.sh
# Practice writing functions

function hello {
    echo "Hello"
}

function ntmy {
    echo "Nice to meet you $1"
}

function addseq {
    echo $@
#all variables are global unless specfically identified as 'local'
    local sum=0
    for element in $@
    do
        let sum=sum+$element
    done
    echo $sum
}

function plier {
    echo $@
    local functotal=1
    for element in $@
    do
        let functotal=functotal\*$element
    done
    echo $functotal
}

function isiteven {
    innum=$1
    local evenodd=$(expr $innum % 2)
    if [[ $evenodd == 0 ]]
    then
        echo "$innum is an Even number"
    else
        echo "$innum is an Odd number"
    fi
    evenorodd=$evenodd
}

function nevens {
    local outlist=()
    for element in $@
    do
        isiteven $element
        if [[ $evenorodd == 0 ]]
        then
            echo "Adding $element to the list..."
            outlist+=($element)
        fi
    done
    echo "The evens from the arg list are: ${outlist[*]}"
}

function howodd {
    local outlist=()
    numofodds=0
    for element in $@
    do 
        isiteven $element
        if [[ $evenorodd == 1 ]]
        then
            echo "Adding $element to odd list"
            numofodds=$(expr $numofodds + 1)
        fi
    done

    echo "Total nums: $numofodds / odds: $#"
    if [[ $# -gt 0 ]]
    then
        local percentage=$(echo "$numofodds / $#"| bc -l)
        echo "The percentage of odd numbers is: $percentage"
    fi
}

function range {
    if [[ $1 -gt 0 ]]
    then
        seq -s " " 0 $1
    else
        seq -s " " $1 0
    fi
}

function extremes {
    max=0
    min=$1
    for i in $@
    do
        if [[ $i -gt $max ]]
        then
            let max=$i
        fi
        if [[ $i -lt $min ]]
        then
            let min=$i
        fi
    done
    echo "Max: $max  Min: $min"
}   
