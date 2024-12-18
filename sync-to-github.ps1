$path = "H:\Мой диск\Assets"
cd $path

# Добавляем все изменения, включая удаление
git add --all

# Коммитим изменения
git commit -m "Sync updates - $(Get-Date)"

# Принудительно пушим в репозиторий
git push --force origin main
