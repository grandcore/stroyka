### Найти все файлы манифестов
### вернуть массив адресов к файлам манифестов
### Если нет хотя бы одного, вернуть ошибку "Манифесты не найдены и завершить основной скрипт".
echo "I'm find-manifestes.sh"
cd utils
source functions.sh 
files=$(find_files "../../"  ".manifest")
files_array=($files)
echo ${files}
echo ${files_array[@]}