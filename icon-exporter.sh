#!/bin/bash
install_path=$HOME"/.icons/numix-icons-light/actions/"
source_dir=$HOME"/.icons/numix/actions/"


ocolor=$1
ncolor=$2

recurse() {
 cd $source_dir$1;
 for i in *;do
    if [ -d "$i" ];then
        echo "dir: $i"
       # recurse "$i"
    elif [ -f "$i" ]; then
		cat $i | sed -e 's/fill:'$2'/fill:'$3'/' > $install_path$1"/"$i
        echo "file: $install_path$1/$i"
    fi
 done
 
}

cd $source_dir;
for i in *;do
recurse $i $1 $2
done

#recursively run through the folders
#cd $source_dir;
#for i in *;
#if type=file{
#do cat $i | sed -e 's/ABC/XYZ/' > resin.conf
##keep the folder name for the target dir
#}elseif type=dir{
#cd	to dir 
#	}
#pointer on file

#run a text replace on the file

#replace original_color with new_color
#save the file to the target_dir in install path
#filepointer > $target_dir$filename
#cd $source_dir;


#for i in *; 
#echo "Success\n";
#done

