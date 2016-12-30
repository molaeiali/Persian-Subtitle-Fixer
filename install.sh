#!/bin/bash
dir=""
tmp=""
for (( i=0; i<${#arg1}; i++ )); do
  if [ ${arg1:$i:1} != '/' ]; then
      tmp+=${arg1:$i:1}
  else
      dir+=$tmp
      dir+='/'
      tmp=""
  fi
done
cp ${dir}fixsub ~/.local/bin/
mkdir -p ~/.local/bin
echo "PATH=\$PATH:~/.local/bin" >> ~/.bashrc
echo "export PATH" >> ~/.bashrc