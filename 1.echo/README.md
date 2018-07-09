### echo

- 字串輸出
```
echo a string
echo "a string"
```
  - output
  ```
  a string
  "a string"
  ```
---


- 把變數輸出成字串
```
var1="a string"
echo $var1
```
  - output
  ```
  a string
  ```
---

- 把變數+自訂字串一起輸出
```
var1="a string"
echo "just $var1"
```
  - output
  ```
  just a string
  ```
---

- 突然想輸出$符號
```
var1="a string"
echo 'just $var1'
```
  - output
  ```
  just $var1
  ```
---

- 輸出兩個以上變數
```
var1="a string"
var2="a string"
echo $var1$var2
```
  - output
  ```
  a stringa string2
  ```
---

> 用`$`字符輸出字串時，可以用任何不能出現在字串中的字符隔開變數，這樣shell就不會把$變數名後面的當成變數的一部分一起解析。

```
myname="dodo"
#不要以為會輸出dodo9527喔！實際上shell會去找myname9527這個變數
echo "my site is $myname9527"
```
  - output
  ```
  my site is
  ```

---


### 輸出其他指令執行的結果

 用```(反引號)把你要執行的指令包覆起來，就可以把該指令執行的結果echo出去

 ```shell
 echo `ls /`
 ```
 - output(輸出根目錄下的檔案)
 ```shell
 bin boot dev etc home lib lib64 lost+found media mnt opt proc root run sbin srv sys tmp usr var
 ```
- 把echo輸出到指定的檔案內
```
echo `ls /` > "what's in root"
```
> 一個`>`是創建新的檔案，兩個`>>`則是在文件尾端加上字串
---
### demo script

```
#!/bin/bash
#echo
echo a string
#output a string
echo "a string"
#output a string
var1="a string "
#變數輸出
echo $var1
#output a string
echo "just $var1"
#output just a string
echo 'just $var1'
#output just $var1
echo \"just $var1\"
#output "just a string"
myname="dodo"
echo "my site is $myname9527"
#output my site is
#because there is no variable named $myname9527
var2="a string2"
echo $var1$var2

echo `ls /`
#use `` to execute some command and echo its result

echo `ls /` > "what's in root"
```






![echo](https://raw.githubusercontent.com/derder9527/linuxCommand/master/1.echo/echo_demo.gif)
        https://raw.githubusercontent.com/derder9527/shell-script-practice/master/7.if-then-else/if-then-else_demo.gif



[Source code at GitHub](https://github.com/derder9527/linuxCommand/tree/master/1.echo)

REF:
[Shell echo命令](http://www.runoob.com/linux/linux-shell-echo.html)
