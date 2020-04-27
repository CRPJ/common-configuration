# linux下java的安装

## java下载安装

我的**安装目录是/opt/java**

创建/opt/java文件夹，命令`sudo mkdir /opt/java`

为了后续方便，将java目录赋予最高权限，命令`sudo chmod 777 /opt/java`

将下载的jdk包解压到/opt/java目录下，命令`sudo tar -zxvf jdk-8u231-linux-x64.tar.gz -C /opt/java`

## 配置java

**在~/.bashrc中配置java**

输入`vim ~/.bashrc`，在最后添加以下内容

```
#　配置java
export   JAVA_HOME=/opt/java/jdk1.8.0_8u231
export   JRE_HOME=$JAVA_HOME/jre
export   CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export  PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
```

配置好后，运行命令`source ~/.bashrc`使配置生效，然后在终端里面输入`java -version`可以查看java是否安装配置成功，输入`javac -version`命令查看javac的版本。

![Alt text](https://github.com/wanghengg/common-configuration/blob/master/install-java-in-linux/java_version.png)

