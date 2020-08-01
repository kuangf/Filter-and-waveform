# Filter-and-waveform
Filter-algorithm -and-arbitrary-waveform-generator
#2020年新工科联盟-Xilinx暑期学校（Summer School）项目
本项目是滤波器算法+任意波形发生器
(1)波形发生器：已实现正弦波，方波的产生可以自己调节频率和相位，但是需要重新生成.coe文件，再加载到Distributed Memory Generator IP中的ROM功能产生波形。
(2)FIR低通滤波器:8阶的FIR低通滤波器，能滤除高频率的杂波。
使用的工具是vivado2018.3，matlab2018。
小组成员：旷凤，李瑶。
使用的是EGO1开发板，
clk连接P17，rst连接P5，DAC_Din连接F6，DAC_Sync连接G4
