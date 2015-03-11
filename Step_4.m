%function  rename_dti_30d %after finishing dcm2nii
cd ~/
cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/1k/ %path
ori = pwd;

list = dir('R1*');
total = length(list);
for i=1:total
    cd(list(i).name);
    disp(pwd);
    %cd ./dti_30d
    gg=dir('*gz');
    movefile(gg.name,'b1000.nii.gz');
    xd=dir('*bvec');
    movefile(xd.name,'b1000.bvec');
    qq=dir('*bval');
    movefile(qq.name,'b1000.bval');
    dd=dir('b1000*');
    cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/1k/
end

cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/
cd 2k/;
ori = pwd;
list = dir('R1*');
total = length(list);
for i=1:total
    cd(list(i).name);
    disp(pwd);
    %cd ./dti_30d
    gg=dir('*gz');
    movefile(gg.name,'b1000.nii.gz');
    xd=dir('*bvec');
    movefile(xd.name,'b1000.bvec');
    qq=dir('*bval');
    movefile(qq.name,'b1000.bval');
    dd=dir('b1000*');
    cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/2k/
end

cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/
cd 3k/;
ori = pwd;
list = dir('R1*');
total = length(list);
for i=1:total
    cd(list(i).name);
    disp(pwd);
    %cd ./dti_30d
    gg=dir('*gz');
    movefile(gg.name,'b1000.nii.gz');
    xd=dir('*bvec');
    movefile(xd.name,'b1000.bvec');
    qq=dir('*bval');
    movefile(qq.name,'b1000.bval');
    dd=dir('b1000*');
    cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/3k/
end
cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/;
