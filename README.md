# Name and Description 
**DTI with FSL tools** This project has util functions and scripts to preprocessing DTI data with FSL tools.

  ## Translations
  
  [[Português| readme.pt.md]]

# How to execute

## To execute the preprocessing
 * to each subject:
  ```bash
  preprocessament_DTI <dtifile>-0001.dcm <DTIdirectory> <Subjectname>
  ```

## To execute the TBSS
  * create the files _design.mat_ and _design.con_, see the examples on the directory, and save them on TBSS study directory. 

  ```bash
  TBSSscript <TBSS_study_directory> <DTIdirectory> 
  ```
  
## To create the RD files
 * As preprocessing didn't create the RD (radial diffusion file). it is necessary create this file from L2 and L3 files using _fslmaths_
 * It is necessary open the file and change the _study_ variable to the path of _studyDirectory/RD_
 * If you follow this workflow, the *directorySubject1* is *DTIdirectory/Subjectname1*

 ```bash
  TBSSCreateRD <directorySubject1> <directorySubject2> ...
  ```
  
## change the name of metrics files
 * The output of preprocessing, name's sufix is the metrics' name, and on TBSS preprocessing you need the name without the final letters.
 * It is necessary open the file and change the _study_ variable to the path of _studyDirectory/<metric>_
 * Replace all _RD_ to the metrics.
 * If you follow this workflow, the *directorySubject1* is *DTIdirectory/Subjectname1*

  ```bash
  TBSSRenameMD_RD_AD <directorySubject1> <directorySubject2>
  ```
