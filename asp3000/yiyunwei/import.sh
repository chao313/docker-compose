#!/bin/bash
mysql -uroot  -e 'create database php_test;use php_test;set names utf8;source  /app/Public/install/install.sql;'