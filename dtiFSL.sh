#!/bin/sh
#$ zenity e comado na bash para testar!
#vai à libraria e explora!! é fácil!
#http://library.gnome.org/users/zenity/3.6/file-selection.html.en
#algumas dicas
#http://www.gustavoroberto.blog.br/2007/09/21/algumas-coisas-sobre-zenity-parte-i/


NAME=`zenity --title="Digite o nome" --text="digite nomeSujeito" --entry`

zenity --info --text="o nome do sujeito= \"$NAME\"."

FILEDTI=`zenity --file-selection --title="Procura de um ficheiro DTI"`

FILESTUDY=`zenity --file-selection --directory --title="Procura da diretoria do Estudo"`

case $? in
         0)
		zenity --info --text="diretoria Dicom DWI= \"$FILESTUDY\"."
		bash /home/labpsi/scriptDataFreeSurfer/scriptDTIfsl $FILEDTI $FILESTUDY $NAME > $FILESTUDY/logsDtiFSL.txt;;
         1)
                echo "No study diretory selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac

echo $NAME $FILEDTI $FILET2 $LABELS > ./fslScript.log
#bash '/home/labpsi/scriptDataFreeSurfer/SlicerWithStudy' $NAME $FILEDTI $FILET2 $LABELS >> ./slicerScript.log
