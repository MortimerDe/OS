#!/bin/bash

# Запрашиваем у пользователя слово для замены и новое слово
read -p "Введите слово, которое нужно заменить: " old_word
read -p "Введите новое слово: " new_word

# Запрашиваем у пользователя путь к директории с текстовыми файлами
read -p "Введите путь к директории с текстовыми файлами: " directory

# Создаем пустой файл для списка измененных файлов
touch modified_files.txt

# Перебираем все текстовые файлы в указанной директории
for file in "$directory"/*.txt; do
    # Проверяем, содержит ли файл искомое слово
    if grep -q "$old_word" "$file"; then
        sed -i "s/$old_word/$new_word/g" "$file"
        echo "$file" >> modified_files.txt
    fi
done

echo "Замена слова '$old_word' на '$new_word' завершена."
echo "Список измененных файлов сохранен в файле 'modified_files.txt'."
