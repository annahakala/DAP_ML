Data = [traindata trainlabels];
bands = 0:7;
bands = bands*24;
for i=1:7
    max_B = max(Data{:,bands(i)+1:bands(i+1)},[],'all');
    Data{:,bands(i)+1:bands(i+1)} = Data{:,bands(i)+1:bands(i+1)}/max_B;
end

bands = 0:4;
bands = bands.*12;
bands = bands+168;

for i=1:4
    max_B = max(Data{:,bands(i)+1:bands(i+1)},[],'all');
    Data{:,bands(i)+1:bands(i+1)} = Data{:,bands(i)+1:bands(i+1)}/max_B;
end

bands = 0:4;
bands = bands*12;
bands = bands+216;
Data{:,217:220} = 0;

for i=1:4
    max_B = max(Data{:,bands(i)+1:bands(i+1)},[],'all');
    Data{:,bands(i)+1:bands(i+1)} = Data{:,bands(i)+1:bands(i+1)}/max_B;
end