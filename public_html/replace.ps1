$files = @(
    "public_html\index.html",
    "public_html\consecuencias.html",
    "public_html\promocion.html",
    "public_html\estrategias.html",
    "public_html\entretenimiento.html"
)

foreach ($file in $files) {
    Write-Host "Procesando $file"
    $content = [System.IO.File]::ReadAllText($file)
    $content = $content -replace '(?s)<script id="tailwind-config">.*?</script>', '<script src="assets/js/tailwind-config.js"></script>'
    $content = $content -replace '<a([^>]*?)href="#"([^>]*?)>Inicio</a>', '<a$1href="index.html"$2>Inicio</a>'
    $content = $content -replace '<a([^>]*?)href="#"([^>]*?)>Consecuencias</a>', '<a$1href="consecuencias.html"$2>Consecuencias</a>'
    $content = $content -replace '<a([^>]*?)href="#"([^>]*?)>Promoción de la Salud</a>', '<a$1href="promocion.html"$2>Promoción de la Salud</a>'
    $content = $content -replace '<a([^>]*?)href="#"([^>]*?)>Estrategias</a>', '<a$1href="estrategias.html"$2>Estrategias</a>'
    $content = $content -replace '<a([^>]*?)href="#"([^>]*?)>Entretenimiento</a>', '<a$1href="entretenimiento.html"$2>Entretenimiento</a>'
    
    [System.IO.File]::WriteAllText($file, $content)
}
Write-Host "Reemplazo completado"
