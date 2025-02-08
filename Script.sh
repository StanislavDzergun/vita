#!/bin/bash

#Засекаем втекущее время до начала работы скрипта
START_TIME=$(date +%s)
#Ищем в каталоге logs все файлы в которых есть строки "test", и считаем их количество
ROWS=$(grep -r "php7.4" /var/log | wc -l)

#Засекаем текущее время после наших поиcков
END_TIME=$(date +%s)

#Считаем разницу во времени
difference=$(( $END_TIME - $START_TIME ))
#Результаты пишем в файл
echo $date "Нашёл $ROWS строки за $difference секунд" >> /mnt/c/FirstScript/test.log