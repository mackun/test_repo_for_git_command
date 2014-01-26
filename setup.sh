
setup(){

#Setting variables
 functions_dir=$HOME/.functions

#Make a directory defined above and copy my scripts in it
 if [   -e ${functions_dir} ] ;then
  cp functions/* ${functions_dir} || { unset -f setup ;return 1 ;}
  fi
 if [ ! -e ${functions_dir} ] ;then
  mkdir ${functions_dir} || { unset -f setup ;return 1 ;}
  cp functions/* ${functions_dir} || { unset -f setup ;return 1 ;}
  fi
 for func in ${functions_dir}/* ;do
  \. ${func}
  done
 unset -f setup

 }

setup

