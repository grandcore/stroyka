#!/bin/bash
### Найти все файлы манифестов
### вернуть массив адресов к файлам манифестов
### Если нет хотя бы одного, вернуть ошибку "Манифесты не найдены и завершить основной скрипт".
echo "I'm find-manifestes.sh"
cd utils
source functions.sh 
source array_files.sh
files=$(find_files "../../"  ".manifest")
files_array=($files)
number_of_files=${#files_array[@]} # пока хз зачем
number_of_sup_files=${#supposed_files[@]}
echo ${files_array[@]}
# Test exist files
if [ $number_of_files != $number_of_sup_files ]
then 
    error_exit "The number of found and required files does not match"
fi

for ((i = 0; i < $number_of_sup_files; i++))
do
    if [ "$(containsElement) "${files_array[$i]}" "${files_array[@]}"" != 1 ]
    then
        error_exit "File not found: ${files_array[$i]}"
    fi
done

for ((i = 0; i < $number_of_files; i++))
do 
    echo "${files_array[$i]}" 
done



