param($installPath, $toolsPath, $package, $project)

# Copier le fichier _DeleteConfirmation.cshtml
$sourcePathHtml = Join-Path $installPath "Views\Shared\_DeleteConfirmation.cshtml"
$destinationPathHtml = Join-Path $project.FullPath "Views\Shared\_DeleteConfirmation.cshtml"

if (!(Test-Path $destinationPathHtml)) {
    Copy-Item $sourcePathHtml -Destination $destinationPathHtml
}

# Copier le fichier deleteConfirmation.js
$sourcePathJs = Join-Path $installPath "tools\Scripts\deleteConfirmation.js"
$destinationPathJs = Join-Path $project.FullPath "wwwroot\js\deleteConfirmation.js"

if (!(Test-Path $destinationPathJs)) {
    Copy-Item $sourcePathJs -Destination $destinationPathJs
}
