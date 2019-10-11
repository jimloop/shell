#!/bin/bash
echo "hello World !"

your_name="runoob.com"
echo ${your_name}

for skill in Ada Coffe Action Java;do
  echo "I am good at ${skill}Script"
  done
#删除变量
unset your_name

echo -e "OK ! \n"  #-e 开启转义  \n  开启换行
echo "It is a test"

echo -e "OK ! \c"  #-e 开启转义  \c 不开启换行
echo "It is a test"

#read命令从标准输入中读取一行，并把输入行的每个字段的值指定给shell变量
#read name
#echo "$name It is a test"

#显示结果定向至文件
echo "It is a test" > myfile

#原样输出字符串，不进行转义或取变量 （用单引号）
echo '$name\"'

#显示命令执行结果
echo `date`

#test 命令用于检查某个条件是否成立  -eq  等于为真   -ne  不等于为真  -gt  大于为真  -gt  大于等于为真  -lt  小于为真  -le  小于等于为真
num1=100
num2=100
if test ${num1} -eq ${num2}
then
    echo '两个数相等！'
else
    echo '两个数不相等！'
fi

#代码中的[]执行基本的算术运算
a=5
b=6
result=$[a+b]
echo "result 为：${result}"


#字符串测试
# = 等于则为真  !=   不等于则为真   -z 字符串   字符串的长度为零则为真   -n 字符串   字符串的长度不为零则为真
num1="ru1noob"
num2="runoob"
if test $num1 = $num2
then
    echo '两个字符串相等!'
else
    echo '两个字符串不相等!'
fi

#文件测试
#