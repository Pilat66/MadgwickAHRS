# Алгоритм MadgwickAHRS

http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms

## Оригинальные файлы алгоритма Madgwick

Open-Source-AHRS-With-x-IMU http://x-io.co.uk/open-source-ahrs-with-x-imu/

MadgwickAHRS-original.c
MadgwickAHRS.h

## Пропатченный файл MadgwickAHRS.c

MadgwickAHRS.c

Изменён с учётом FreeIMU-Updates/libraries/FreeIMU/MadgwickAHRS.h

## SWIG

http://www.swig.org

MadgwickAHRS.i


## Сборка

make.sh

Запуск:

	./make.sh

При этом будет создана директория release-<время запуска make.sh>
и запущен тестовый скрипт. 

Все промежуточные файлы удаляются.

## Тесты

test-MadgwickAHRS.pl - простой вызов функций


## Дополнительные репозитории

FreeIMU-Updates https://github.com/mjs513/FreeIMU-Updates


