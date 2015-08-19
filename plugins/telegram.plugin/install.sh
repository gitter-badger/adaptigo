
#!/bin/bash
aptitude install -y curl
if (uname -a | grep 'x86_64'); then
 
  # 64-bit stuff here
  cd /opt
  	wget https://tdesktop.com/linux 
	mv linux32 linux32.tar.gz
  	tar xvf linux.tar.gz
	rm linux.tar.gz -fv
	/opt/Telegram/Telegram
else
   # 32-bit stuff here
    cd /opt
	wget https://tdesktop.com/linux32 
	mv linux32 linux32.tar.gz
	tar xvf linux32.tar.gz
	rm linux32.tar.gz -fv
	/opt/Telegram/Telegram


fi

