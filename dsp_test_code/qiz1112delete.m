clc
clear all;
%程序 ti4.m 
A=[1,-1.6,0.9425]; %H(z) 的分母多项式系数
B1=1; B2=[1,-0.3]; B3=[1,-0.8]; 
B4=[1,-1.6,0.8]; %H(z) 分子多项式系数
b1=[1,0,0];b2=[1,-0.3,0];b3=[1,-0.8,0]; 
b4=[1,-1.6,0.8]; %H(z) 的正次幂分子多项式系数
p=roots(A); % 求 H1(z),H2(z),H3 （z），H4（ z）的极点
z1=roots(b1); %求 H1(z) 的极点
z2=roots(b2); %求 H2(z)的极点
z3=roots(b3); % 求 H3(z) 的极点
z4=roots(b4); %求 H4(z)的极点
[h1n, n]=impz(B1, A, 100); % 计算单位脉冲响 h1(n)的 100 个样值
[h2n, n]=impz(B2, A, 100); % 计算单位脉冲响 h2(n)的 100 个样值
[h3n, n]=impz(B3, A, 100); % 计算单位脉冲响 h3(n)的 100 个样值
[h4n, n]=impz(B4, A, 100); % 计算单位脉冲响 h4(n)的 100 个样值
%----------------------------------------------------------- 
%以下是绘图部分
subplot(2, 2, 1); 
zplane(B1, A); % 绘制 H1(z) 的零极点图
title('H1(z) 的零极点图');
subplot(2, 2, 2); 
stem(n,h1n,'.'); %绘制 h1(z)的波形图
title('h1(z)的波形图');
line([0,100],[0,0]); 
xlabel('n'); ylabel('h1(n)'); 
subplot(2, 2, 3); 
zplane(B2, A); % 绘制 H2(z) 的零极点图
title('H2(z) 的零极点图');
subplot(2, 2, 4); 
stem(n,h2n,'.'); %绘制 h2(z)的波形图
title('h2(z)的波形图');
line([0,100],[0,0]) 
xlabel('n'); ylabel('h2(n)'); 
figure(2); subplot(2,2,1); 
zplane(B3, A); % 绘制 H3(z) 的零极点图
title('H3(z) 的零极点图');
subplot(2, 2, 2); 
stem(n,h3n,'.'); %绘制 h3(z)的波形图
title('h3(z)的波形图');
line([0,100],[0,0]); 
xlabel('n'); ylabel('h3(n)'); 
subplot(2, 2, 3); 
zplane(B4, A); % 绘制 H4(z) 的零极点图
title('H3(z) 的零极点图');
subplot(2, 2, 4); 
stem(n,h4n,'.'); %绘制 h4(z)的波形图
title('h4(z)的波形图');
line([0,100],[0,0]); 
xlabel('n'); ylabel('h4(n)'); 

%题目第三问分析如下段文字：
%四种系统函数的极点分布一样， 只是零点不同， 第一种零点在原点， 不影响
%系统的频率特性， 也不影响单位脉冲响应。 第二种的零点在实轴上， 但离极点较远。 第
%三种的零点靠近极点。 第四种的零点非常靠近极点， 比较它们的单位脉冲响应， 会发
%现零点愈靠近极点， 单位脉冲响应的变化愈缓慢， 因此零点对极点的作用起抵消作用； 同
%时， 第四种有两个零点， 抵消作用更明显