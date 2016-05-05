#!/bin/bash

 functions_dir=$HOME/.functions
 if [   -e ${functions_dir} ] ;then
  cp -i functions/* ${functions_dir} || { unset -f setup ;return 1 ;}
  fi
 if [ ! -e ${functions_dir} ] ;then
  mkdir ${functions_dir} || { unset -f setup ;return 1 ;}
  cp -i functions/* ${functions_dir} || { unset -f setup ;return 1 ;}
  fi
 for func in ${functions_dir}/* ;do
  \. ${func}
  done
