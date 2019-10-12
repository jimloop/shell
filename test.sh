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
# -e 文件名   如果文件存在则为真  -r文件名   如果文件存在且可读则为真   -w文件名   如果文件存在且可写则为真   -x文件名    如果文件存在且可执行则为真
# -s文件名   如果文件存在且至少一个字符串则为真   -d文件名   如果文件存在且为目录则为真    -f文件名  如果文件存在且为普通文件则为真   -c文件名   如果文件存在且为字符型特殊文件则为真
# -b文件名 如果文件存在且为块特殊文件则为真
if test -e ./bash
then
  echo '文件已存在！'
else
  echo '文件不存在！'
fi

#shell 还提供了 与(-a)、或(-o)、非(!)三个逻辑操作符用于将测试条件连接起来，其优先级为：“!”最高  “-a”次之  "-o"最低。
if test -e ./myfile -o -e ./bash
then
  echo '至少有一个文件存在'
else
  echo '两个文件都不存在'
fi

#shell函数
funWithReturn(){
  echo "这个函数会对输入的两个数字进行相加运算..."
  echo "请输入第一个数字："
  read aNum
  echo "请输入第二个数字："
  read bNum
  # shellcheck disable=SC2004
  echo "两个数字分别为$aNum和$bNum，和为：$(($aNum+$bNum))"
  # shellcheck disable=SC2004
  return $(($aNum+$bNum))
}

funWithReturn
echo "function 'funWithReturn'的执行结果为：$? !"

#函数参数
funWithParams(){
  echo "第一个参数为：$1"
  echo "第二个参数为：$2"
  echo "第三个参数为：$3"
  echo "第十个参数为：${10}"
  echo "一共有$#个参数"
  echo "作为一个字符串输出所有参数：$*"
}

funWithParams 1 2 3 4 5 6
#参数处理的特殊字符： $#  传递到脚本的参数个数  $*  以一个单字符串显示所有向脚本传递的参数   $$脚本运行的当前进程的ID号   $!   后台运行的最后一个进程的ID号
#                    $@   与$*相同，但在返回时加引号，并在引号中返回每个参数   $-   显示shell使用的当前选项，与set命令功能相同   $?  显示最后命令的退出状态。0表示没有错误，其他任何值表示有错误

#shell输入输出重定向
#一个命令通常从一个叫标准输入的地方读取输入，默认情况下，这恰好是你的终端；同样，一个命令通常将输出写入到标准输出，默认情况下，这也是你的终端输；
(重定向命令列表如下:
 command > file  将输出重定向到file
 command < file  将输入重定向到file
 command >> file 将输出以追加的方式重定向到file
 n > file   将文件描述符为n的文件重定向到file
 n >> file  将文件描述符为n的文件以追加的方式重定向到file

)