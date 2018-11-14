#/bin/bash
#usage : ./countLines.sh folder1 folder2

if [ $# -lt 1 ]
then
	echo "usage: ./countLines.sh folder1 folder2 ..."
	exit 0
fi
TO_PRINT="TRUE"

print () {
    if [ $TO_PRINT = "TRUE" ]
    then
    echo $1
    fi
}

total_size=0
printf 'Project name: %s\n' "${PWD##*/}"
for var in "$@"
do
    print "Folder : $var"
	size=0
    for file in $var/*
    do
        lines=$(wc -l $file | cut -d " " -f 1) 
	    print "$file: $lines"
        size=$(( $size + $lines ))
    done
    print "Total for $var : $size"
    total_size=$(( $size + $total_size ))
done
echo "Total for all folders: $total_size"

