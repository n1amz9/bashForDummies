#!/bin/bash

x=1

while [ $x -le 5 ]
do
    cowsay Hello
    x=$(( $x + 1 ))
done

cowsay Bye