$htmlFiles = Get-ChildItem -Path "public_html" -Filter "*.html"

$imgDir = "public_html\assets\images"
if (-not (Test-Path $imgDir)) {
    New-Item -ItemType Directory -Force -Path $imgDir | Out-Null
}

$urlMapping = @{}
$imageCounter = 1

# First pass: Find all unique images and download them
foreach ($file in $htmlFiles) {
    $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    
    $regex = 'https://lh3\.googleusercontent\.com/[^&"''\)]+'
    $matches = [regex]::Matches($content, $regex)
    
    foreach ($m in $matches) {
        $fullUrl = $m.Value
        if (-not $urlMapping.ContainsKey($fullUrl)) {
            $localName = "image_$imageCounter.jpg"
            $localPath = Join-Path $imgDir $localName
            Write-Host "Downloading image $imageCounter..."
            
            try {
                Invoke-WebRequest -Uri $fullUrl -OutFile $localPath
                $urlMapping[$fullUrl] = "assets/images/$localName"
                $imageCounter++
            } catch {
                Write-Host "Error downloading $($fullUrl): $_"
            }
        }
    }
}

# Second pass: Replace the URLs in the HTML files
foreach ($file in $htmlFiles) {
    $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    $modified = $false
    foreach ($url in $urlMapping.Keys) {
        if ($content.Contains($url)) {
            $content = $content.Replace($url, $urlMapping[$url])
            $modified = $true
        }
    }
    if ($modified) {
        [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
        Write-Host "Updated $($file.Name)"
    }
}

Write-Host "All images downloaded and links updated."
