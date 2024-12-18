# Путь к папке репозитория
$repoPath = "H:\Мой диск\Assets"

# Сообщение для коммита с текущей датой и временем
$commitMessage = "Auto-sync updates - $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")"

# Переход в папку репозитория
Set-Location -Path $repoPath

# Проверка изменений и добавление только изменённых файлов
git add .

# Проверка, есть ли изменения
if (git status --porcelain) {
    # Создание коммита
    git commit -m $commitMessage

    # Пуш изменений в удалённый репозиторий
    git push origin main
} else {
    Write-Host "No changes to commit."
}
