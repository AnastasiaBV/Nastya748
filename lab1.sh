#!/bin/bash
echo "Programm name - CD create"
echo "Programm from creating CD file"
echo "Bajgulova Anastasia 748"

while true; do
      while true; do

      echo "directory path:"
      read path

      if [ -e "$path" ]
      then
               echo "found :)"
               break
      else
               echo "not found :("
      fi

      done


      echo "name cd disc:"
      read name_iso
      if [ -e $name_iso.iso ]
      then

            export new_name='date +%e_%m_%g'
            mkisofs -l -o $name_iso$new_name.iso $path 2>error.txt
      else

            mkisofs -l -o $name_iso.iso $path 2>error.txt
      fi
      echo "All action completed. repeat? (y/n)"
               read x
           if [ $x = y ]
           then continue
           else break
           fi
done
