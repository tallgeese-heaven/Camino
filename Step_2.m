clc;
cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/;
list=dir('R1*');
total=length(list);
% 1k
cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/1k/;
for k=1:total
    mkdir(list(k).name);
    cd(list(k).name);
    mkdir dti_30d;
    pwd_now=pwd;
    cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/;
    cd(list(k).name);
    des = dir('*_3000_30d');
    cd(des.name);
    DIR_ = dir;
    
    for i = 3:93
        ZZ=dicominfo(DIR_(i).name);
        for j = 1:90
           AAZ= ZZ.SequenceName;
           if(strcmp(AAZ,['*ep_b1000#',num2str(j)]) )
                copyfile (DIR_(i).name,[pwd_now,'/dti_30d/']);
           elseif(strcmp(AAZ,'*ep_b0') )
                copyfile (DIR_(i).name,[pwd_now,'/dti_30d/']);
           end
        end
    end
    cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/1k/;
end
cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/;
% 2k    
cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/2k/;
for k=1:total
    mkdir(list(k).name);
    cd(list(k).name);
    mkdir dti_30d;
    pwd_now=pwd;
    cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/;
    cd(list(k).name);
    des = dir('*_3000_30d');
    cd(des.name);
    DIR_ = dir;
    
    for i = 3:93
        ZZ=dicominfo(DIR_(i).name);
        for j = 1:90
           AAZ= ZZ.SequenceName;
           if(strcmp(AAZ,['*ep_b2000#',num2str(j)]) )
                copyfile (DIR_(i).name,[pwd_now,'/dti_30d/']);
           elseif(strcmp(AAZ,'*ep_b0') )
                copyfile (DIR_(i).name,[pwd_now,'/dti_30d/']);
           end
        end
    end
    cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/2k/;
end
cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/;
% 3k
cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/3k/;
for k=1:total
    mkdir(list(k).name);
    cd(list(k).name);
    mkdir dti_30d;
    pwd_now=pwd;
    cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/;
    cd(list(k).name);
    des = dir('*_3000_30d');
    cd(des.name);
    DIR_ = dir;
    
    for i = 3:93
        ZZ=dicominfo(DIR_(i).name);
        for j = 1:90
           AAZ= ZZ.SequenceName;
           if(strcmp(AAZ,['*ep_b3000#',num2str(j)]) )
                copyfile (DIR_(i).name,[pwd_now,'/dti_30d/']);
           elseif(strcmp(AAZ,'*ep_b0') )
                copyfile (DIR_(i).name,[pwd_now,'/dti_30d/']);
           end
        end
    end
    cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/3k/;
end
cd /media/HD-LBU3/Linkou/Camino/NRPB/PD/;
