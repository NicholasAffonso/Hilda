#!/bin/bash

for i in `cat ../.TWM_packages` ; do \
       echo -e "\n$i";
done

$HILDA


exit 0
