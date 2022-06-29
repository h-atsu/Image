#!bin/bash
fileid=1c5z6RTIEAPc5HT6Xk_jsz5FsDgArUWmN
filename=train2014.zip
html=`curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}"`
curl -Lb ./cookie "https://drive.google.com/uc?export=download&`echo ${html}|grep -Po '(confirm=[a-zA-Z0-9\-_]+)'`&id=${fileid}" -o ${filename}
unzip train2014.zip