# DEU PANEL

> aktos-dcs kütüphanesi yükleme adımları:
    
    git clone https://github.com/mesutevin/aktos-dcs
    cd aktos-dcs
    sudo install-on-linux.sh 
   
> deu-panel kütüphanesi yükleme adımları:
     
     git clone https://github.com/mesutevin/deu-panel
     sudo npm install -g LiveScript brunch pm2
     sudo apt-get install libzmq3-dev
     cd deu-panel
     npm install

> Not : aktos-dcs ve deu-panel klasörleri aynı alt dizinde bulunmalı.


> server ın sürekli çalışması için: (root yetkisi gerektirir)     
    
     apt-get install supervisor
     service supervisor restart
     nano /etc/supervisor/conf.d/deu-panel.conf
     supervisorctl reread
     supervisorctl update

`conf dosyasının içeriği aşağıdaki gibi olmalıdır`

     [program:deu-panel]
     command=/usr/local/bin/lsc server.ls
     directory=[PATH TO PROJECT FILE]/deu-panel/server
     autostart=true
     autorestart=true
     stderr_logfile=/var/log/deu-panel.err.log
     stdout_logfile=/var/log/deu-panel.out.log
     

