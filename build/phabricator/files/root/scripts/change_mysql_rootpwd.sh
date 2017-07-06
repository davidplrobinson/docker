#!/bin/bash

#mysql -u root -pchangeme -Bse 'UPDATE user SET password=PASSWORD("Password123") WHERE User="root"'
mysqladmin -u root -pchangeme password Password123
