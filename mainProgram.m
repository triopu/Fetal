clear;
clc;
close all;

[time,ecgData] = readFile('/Data/Documents/Kuliah Magister/Thesis/Abdominal/Database/r01_edfm');
[qrs] = load('/Data/Documents/Kuliah Magister/Thesis/Abdominal/Annotation/r01.txt');

label = {'Direct_1', 'Abdomen_1', 'Abdomen_2', 'Abdomen_3', 'Abdomen_4', 'Annotation'};

figure(1)
for i=1:5
  subplot(3,2,i) %subplot(5,1,i)
  ecg = ecgData(i,:);
  plot(time, ecg);
  hold on;
  plot(time(qrs),ecg(qrs),'*');
  xlim([0 3]);
  ylabel(label(i));
end
