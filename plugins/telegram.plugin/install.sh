
#!/bin/bash
aptitude install -y curl
if (uname -m  == 'x86_64'); then
 
  # 64-bit stuff here
  cd /opt
  	wget https://tdesktop.com/linux -O linux.tar.gz 

else
   # 32-bit stuff here
    cd /opt
	wget https://tdesktop.com/linux32 -O linux.tar.gz


fi
  	tar xvf linux.tar.gz
	rm linux.tar.gz -fv
	/opt/Telegram/Telegram