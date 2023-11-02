% 设计带通滤波器
fs = 16; % 采样率
f1 = 0.1; % 通带低频截止频率
f2 = 2; % 通带高频截止频率
Wn = [f1 f2]/(fs/2); % 归一化截止频率
[n, Wn] = buttord(Wn(1), Wn(2), 3, 40); % 计算滤波器阶数和截止频率
[b, a] = butter(n, Wn, 'bandpass'); % 求取滤波器系数