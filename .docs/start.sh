#!/bin/bash
echo "HELLO! I'm dock generator"
cd .. 
script_dir=$(pwd)/utils
chmod +x $script_dir/check-libs.sh
chmod +x $script_dir/check-manifestes.sh
$script_dir/check-libs.sh
$script_dir/check-manifestes.sh

# Запустить chack-libs.sh
# Запустить check-manifestes.sh

# Если ошибка на любой из итераций - остановить вывести полной лог

# Если успешно завершилось всё - вывести полной лог успешных завершений скриптов.



