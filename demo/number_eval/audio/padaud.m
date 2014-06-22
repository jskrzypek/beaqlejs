mkdir('output');
pad = repmat([0 0],44100/2,1);
for i = 0:9
    for j = 1:3
        [y,FS] = audioread(strcat('',int2str(i),'_',int2str(j),'.wav'));
        ynew = cat(1,pad,y,pad);
        audiowrite(strcat('output',filesep,int2str(i),'_',int2str(j),'.wav'),ynew,FS);
    end
end
