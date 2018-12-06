clear;
clc;
close all;

database = {'r01', 'r04', 'r07', 'r08', 'r10'};

for k = 1:5
  file = sprintf('/Data/Documents/Kuliah Magister/Thesis/Abdominal/Database/%s_edfm',database{k})
  ann  = sprintf('/Data/Documents/Kuliah Magister/Thesis/Abdominal/Annotation/%s.txt',database{k})
  [time,ecgData] = readFile(file);
  [qrs] = load(ann);

  label = {'Direct_1', 'Abdomen_1', 'Abdomen_2', 'Abdomen_3', 'Abdomen_4', 'Annotation'};

  figure(k)
  for i=1:5
    subplot(3,2,i) %subplot(5,1,i)
    ecg = ecgData(i,:);
    plot(time, ecg);
    hold on;
    plot(time(qrs),ecg(qrs),'*');
    xlim([0 3]);
    ylabel(label(i));
  end
end
