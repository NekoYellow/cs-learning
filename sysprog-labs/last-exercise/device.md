用insmod加载模块
```sh
sudo insmod mem_device.ko
```

用mknod创建设备文件
```sh
sudo mknod /dev/mem_device c 241 0
```
其中241是dmesg得到的主设备号。

设置文件权限
```sh
sudo chmod 666 /dev/mem_device
```

用重定向向设备写入数据
```sh
sudo sh -c "echo 'Hello, World!' > /dev/mem_device"
```