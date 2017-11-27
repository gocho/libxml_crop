此工程由netbean生成， 可以直接使用netbean打开使用
如需手动编译和修改编译工具链，参考一下步骤：
1. 修改编译工具链
在nbproject文件里找到相应的配置项， 修改Makefile-xxx.mk 文件即可
如修改 Static_Library_arm， 修改nbproject/Makefile-Static_Library_arm.mk 文件

2. 编译
make clean CONF=Static_Library_x86
make CONF=Static_Library_x86
