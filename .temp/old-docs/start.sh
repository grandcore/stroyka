#!/bin/bash
echo "HELLO! I'm dock generator"
script_dir=$(pwd)/utils
chmod +x $script_dir/check-libs.sh
chmod +x $script_dir/check-manifestes.sh
chmod +x $script_dir/find-manifestes.sh
$script_dir/check-libs.sh
$script_dir/check-manifestes.sh
$script_dir/find-manifestes.sh


# TODO:
# Подключаем functions.sh
# Запустить check-libs.sh
# Запустить find-manifestes.sh
# Запустить output.sh

# Если ошибка на любой из итераций - остановить вывести полной лог
# Если успешно завершилось всё - вывести полной лог успешных завершений скриптов.


# BACKLIST
# Запустить check-manifestes.sh




