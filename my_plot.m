clc;clear;close all;
handle = figure(1);
handle.KeyPressFcn = @callback

x = linspace(0, 4 * pi, 4000);

subplot(2, 1, 1);
plot(x, sin(x) + 0.1 * rand(1, 4000));

subplot(2, 1, 2);
plot(x, sin(x) + 0.1 * rand(1, 4000));


% w和s控制y轴缩放
% a和d控制x轴缩放
% q和e控制x轴是否同步