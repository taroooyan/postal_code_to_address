#! /bin/bash
wget http://www.post.japanpost.jp/zipcode/dl/oogaki/zip/ken_all.zip && unzip ken_all.zip && nkf -w KEN_ALL.CSV |awk -F, '{print $3" -> "$7$8$9}'|sed -e 's/\"//g' > data.txt && rm ken_all.zip KEN_ALL.CSV

