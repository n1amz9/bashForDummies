#!/bin/bash

first_greeting="First Hello World!"
later_greeting="Last Hello World!"
index=6

if [ $index -lt 5]
then
    echo $first_greeting
else
    echo $later_greeting
fi