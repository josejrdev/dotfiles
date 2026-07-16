#!/bin/env bash

lista_busca=("python" "java" "gcc" "node" "perl" "go", "lua", "bash")
python_v=$(python --version)
java_v=$(java --version | grep "openjdk" | cut -d " " -f 2,1)
gcc_v=$(gcc --version | grep "gcc" | cut -d " " -f 1,3)
node_v=$(node --version)
perl_v=$(perl --version | grep "x86_64-linux" | cut -d " " -f 3,4,5,6,8,9
)
go_v=$(go version | cut -d " " -f 1,3)
lua_v=$(lua -v | cut -d " " -f 1,2)
bash_v=$(bash --version | grep "GNU bash" | cut -d " " -f 1,2,4)

for i in "${lista_busca[@]}"; do
	if [ "$i" == "python" ]; then
		echo
		echo "Linguagem Python Versão: $python_v"
		echo
	elif [ "$i" == "java" ]; then
		echo "Máquina Virtual Java Versão: $java_v"
		echo
	elif [ "$i" == "gcc" ]; then
		echo "Compilador C Versão: $gcc_v"
		echo
	elif [ "$i" == "node" ]; then
		echo "Node.js Versão: $node_v"
		echo
	elif [ "$i" == "perl" ]; then
		echo "Linguagem Perl Versão: $perl_v"
		echo
	elif [ "$i" == "go" ]; then
		echo "Linguagem Go Versão: $go_v"
		echo
	elif [ "$i" == "lua" ]; then
		echo "Linguagem Lua Versão: $lua_v"
		echo
	elif [ "$i" == "bash" ]; then
		echo "Bash Versão: $bash_v"
		echo
	fi
done
