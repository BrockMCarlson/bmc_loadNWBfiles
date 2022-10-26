% loadNWBfiles
% Created by Brock Michael Carlson
% Initialized during the NeuroDataReHack 2022 at the Allen Institue
% 10/4/2022

% The goal of this script is to load in NWB file information from the
% dandiset 000021 (and maybe 000022). Once loaded we hope to choose 4 nodes
% and calculate a TPM. 

%% Load NWB _00039 - works
clear

cd('C:\Users\Brock\Documents\MATLAB\helper functions')
cd matnwb
addpath(genpath(pwd));
generateCore(); % generate the most recent nwb-schema release.

fileStorageFile = 'C:\Users\Brock\Desktop\NeuroDataReHack';
cd(fileStorageFile)

nwbFileName_39 = 'sub-661968859_ses-682746585_behavior+ophys.nwb';
nwbFile_39 = strcat(fileStorageFile,filesep,nwbFileName_39);

nwb_39 = nwbRead(nwbFile_39);

%% Load NWB _00021 - does not work
clear

cd('C:\Users\Brock\Documents\MATLAB\helper functions')
cd matnwb
addpath(genpath(pwd));
generateCore(); % generate the most recent nwb-schema release.

fileStorageFile = 'C:\Users\Brock\Desktop\NeuroDataReHack';
cd(fileStorageFile)

nwbFileName_21 = 'sub-699733573_ses-715093703.nwb';
nwbFile_21 = strcat(fileStorageFile,filesep,nwbFileName_21);

nwb_21 = nwbRead(nwbFile_21);

%% Load NWB _00021 - attempt other files
clear

cd('C:\Users\Brock\Documents\MATLAB\helper functions')
cd matnwb
addpath(genpath(pwd));
generateCore(); % generate the most recent nwb-schema release.

fileStorageFile = 'E:\dandisets\000021\sub-699733573';
cd(fileStorageFile)

nwbFileName_A = 'sub-699733573_ses-715093703.nwb';
nwbFile_A = strcat(fileStorageFile,filesep,nwbFileName_A);

nwbFileName_B = 'sub-699733573_ses-715093703_probe-810755801_ecephys.nwb';
nwbFile_B = strcat(fileStorageFile,filesep,nwbFileName_B);

nwb = nwbRead(nwbFile_A);


%% Calculate TPM

