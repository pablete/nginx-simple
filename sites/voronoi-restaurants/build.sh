#!/bin/bash

#execute SQL on netezza, get all restaurants. Clean the null coordinates using clean.rb

ruby clean_poi.rb < all_pois.tsv > poi.csv.booking

cat restaurants.csv.opentable > restaurants.csv
cat poi.csv.booking >> restaurants.csv
