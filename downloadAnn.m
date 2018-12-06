% Download Annotation
clear;
clc;
database = {'r01','r04','r07','r08','r10'};

for n = 1:length(database)
  [qrs] = rdann(sprintf('adfecgdb/%s.edf',database{n}),'qrs',[],[],[],'N');
  
  fid = fopen(sprintf('%s.txt',database{n}), 'w');
  for i = 1:length(qrs)
    fprintf(fid,'%0.0f\n',qrs(i));
  end
  fclose(fid);
  
end
