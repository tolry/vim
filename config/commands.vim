command OlryTagsAll !ctags-exuberant -R --PHP-kinds=+cf -f .tags .
command OlryTagsSrc !ctags-exuberant -R --PHP-kinds=+cf -f .tags-src src/ app/
command OlryTagsVendor !ctags-exuberant -R --PHP-kinds=+cf -f .tags-vendors vendor/
command OlryTagsVendorExtra !ctags-exuberant -R --PHP-kinds=+cf -f .tags-vendors ../../vendor/
command XmlFormat %!xmllint --format -
