#!/usr/bin/env bash

for executable in solc unzip
do
	which ${executable} > /dev/null
	if [ $? -ne 0 ]; then
        	echo "'${executable}' must be present on the PATH"
        	exit -1
	fi
done

rm -rf target && mkdir -p target/staging/lib/zeppelin
if [ $? -ne 0 ]; then
        echo "failed to clean 'target'"
        exit -1
fi

cp -rf src/* target/staging/
if [ $? -ne 0 ]; then
        echo "failed to copy sources to 'target/staging'"
        exit -1
fi

cd target/staging
if [ $? -ne 0 ]; then
	echo "failed to enter 'target/staging'"
	exit -1
fi

unzip zeppelin-solidity-1.6.0.zip > /dev/null
if [ $? -ne 0 ]; then
        echo "failed to unzip 'zeppelin-solidity-1.6.0.zip'"
        exit -1
fi

rm zeppelin-solidity-1.6.0.zip
if [ $? -ne 0 ]; then
        echo "failed to remove 'zeppelin-solidity-1.6.0.zip'"
        exit -1
fi

for directory in token math
do
	mv zeppelin-solidity-1.6.0/contracts/${directory} lib/zeppelin/
	if [ $? -ne 0 ]; then
        	echo "failed to move 'zeppelin-solidity-1.6.0/contracts/${directory}'"
        	exit -1
	fi
done

solc -o ../build --optimize --abi --hashes --overwrite --bin Fysical.sol
if [ $? -ne 0 ]; then
        echo "failed to compile 'Fysical.sol'"
        exit -1
fi

cd ..
if [ $? -ne 0 ]; then
        echo "failed to enter 'target'"
        exit -1
fi

mv build/Fysical.* .
if [ $? -ne 0 ]; then
        echo "failed to move 'Fysical.*' to target"
        exit -1
fi

rm -rf staging build
if [ $? -ne 0 ]; then
        echo "failed to remove staging and build"
        exit -1
fi

