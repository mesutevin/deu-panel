# DEU-PANEL

> Install aktos-dcs :

    git clone https://github.com/mesutevin/aktos-dcs
    cd aktos-dcs
    sudo install-on-linux.sh

> Install Deu-Panel (require aktos-dcs library) :

     git clone https://github.com/mesutevin/deu-panel
     sudo npm install -g LiveScript brunch pm2
     sudo apt-get install libzmq3-dev

`aktos-dcs and deu-panel folders must be same working directory.`

---

`Compile and start the server`

     cd deu-panel
     make run-brunch (run another terminal)
     (After Compiled brunch (Example message brunch -> info: compiled ... files)
     cd server
     ln -s ../public .
     ./run-server

'For ubuntu systems'
     cd $(dirname $(which node))
     mv node node.bak
     ln -s $(which nodejs) node

---

`Supervisor can automatically restart a script every boot or on any crash. (root privilege is needed)`

     apt-get install supervisor
     service supervisor restart
     nano /etc/supervisor/conf.d/deu-panel.conf
     supervisorctl reread
     supervisorctl update

`A simple supervisor configuration file (in /etc/supervisor/conf.d/):`

     [program:deu-panel]
     command=/usr/local/bin/lsc server.ls
     directory=[PATH TO PROJECT FILE]/deu-panel/server
     autostart=true
     autorestart=true
     stderr_logfile=/var/log/deu-panel.err.log
     stdout_logfile=/var/log/deu-panel.out.log
