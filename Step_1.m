%% Step 1: copy DKI data to new folders
clc;
%ori='/media/HD-LBU3/Linkou/MSA_C' %path;data folder
%ori='/media/HD-LBU3/NRPB/NRPB(DICOM)/PD';
%

%s = '/media/HD-LBU3/Linkou/Camino_NRPB/MSA_C/'; %new folder path
%s = '/media/FC61-373B/NRPB_T1/PD/';
%
ori = '/media/HD-LBU3/Linkou/Camino/NRPB/PD_DICOM/';
s = '/media/HD-LBU3/Linkou/Camino/NRPB/PD/';
cd(ori);
father = dir('R1*');
leng = length(father);


for i=1:leng
    
    cd (father(i,1).name);
    disp('start copy file from');
    disp(pwd);
    

    if ~isempty(dir('*3000_30d'))
        mkdir([s,father(i).name]);
        des = [s,father(i,1).name];
        copyfile('*3000_30d',des);
        disp('copy file to');
        disp(des);
        cd(ori)
    end
    %To run CAMINO
    
     if ~isempty(dir('*B0_1K'))
        mkdir([s,father(i).name]);
        des = [s,father(i,1).name];
        copyfile('*B0_1K',des);
        disp('copy files to');
        disp(des);
        disp('done!');
        cd(ori)
    end

    if ~isempty(dir('*SPLIT'))
        mkdir([s,father(i).name]);
        des = [s,father(i,1).name];
        copyfile('*SPLIT',des);
        disp('copy files to');
        disp(des);
        disp('done!');
        cd(ori)
    end
    cd(ori)
end
cd /media/HD-LBU3/Linkou/Camino/NRPB/;


%{
for i=1:leng
    disp('start copy files from');
    cd(father(i,1).name);
    disp(pwd);
    des = [s,father(i).name,'/'];
    file=dir('b*.nii.gz');
    copyfile(file.name,[des,'b1000.nii.gz']);
    disp('copy files to');
    disp(des);
    cd(ori);
end
%}


%{
cd(s);
sdir=dir('R*');
for i=1:leng
    cd(ori);
    cd(father(i,1).name);
    disp(pwd);
    
    if exist('dkidata','dir')
        cd dkidata
        if exist('1B0','dir')
            cd 1B0
            des = [s,sdir(i).name,'/'];
            if exist('dmean.img','file')
                copyfile('dax.hdr',des);
                copyfile('dax.img',des);
                copyfile('drad.hdr',des);
                copyfile('drad.img',des);
                copyfile('dmean.hdr',des);
                copyfile('dmean.img',des);
                copyfile('kax.hdr',des);
                copyfile('kax.img',des);
                copyfile('kmean.hdr',des);
                copyfile('kmean.img',des);
                copyfile('krad.hdr',des);
                copyfile('krad.img',des);
                copyfile('fa.hdr',des);
                copyfile('fa.img',des);
                disp('copy file to');
                disp(des);
                cd(ori);
            end
        end
    else
        disp('no file can copy from');
        disp(pwd);
        cd(ori);
        continue;
    end
end
%}


%{
for i=1:leng
    
    cd(father(i,1).name);
    disp('start copy files from');
    disp(pwd);
    
    if exist('dti_MD.nii.gz','file')
        des = s;
        copyfile('dti_MD.nii.gz',[des,'NL_',father(i).name,'_FA.nii.gz']);
        disp('copy file to');
        disp(des);
        
        cd(ori);
    else
        disp('no file can copy from');
        disp(pwd);
        cd(ori);
        continue;
    end
end
%}


%{
for i=1:leng
    
    cd(father(i).name);
    disp('start copy file from');
    disp(pwd);
    
    if exist('fa.nii.gz','file')
        
        des = [s,father(i).name];
        
        copyfile('fa.nii.gz',des);
        %copyfile('4Ddwi_b1000_bvector.scheme',des);
        %copyfile('data.nii.gz',des);
        %copyfile('b1000.bval',des);
        %copyfile('b1000.bvec',des);
        %copyfile('dwi.Bfloat',des);
        %copyfile('dt.Bdouble',des);
        %copyfile('data_brain_mask.nii.gz',des);
        %copyfile('C1toMNI_Affine.mat',des);
        %copyfile('C1toMNI_FA_SN.nii.gz',des);
        %copyfile('dteig_L1.nii.gz',des);
        copyfile('md.nii.gz',des);
        disp('copy file to');
        disp(des);
        cd(ori);
        
    else
        disp('no file can copy');
        cd(ori);
    end
end
%}
