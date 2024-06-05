#!/bin/bash

first_greeting="First Hello World!"
later_greeting="Last Hello World!"
index=2

if [ $index -lt 5 ]
then
    echo $first_greeting
else
    echo $later_greeting
fi