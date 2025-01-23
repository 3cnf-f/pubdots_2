hxurl=https://github.com/helix-editor/helix/releases/download/25.01/helix-25.01-x86_64-linux.tar.xz && \

hxdir=helix-25.01-x86_64-linux &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \
mkdir -p /home/ubuntu/.config/helix/runtime && cp -r runtime/* /home/ubuntu/.config/helix/runtime/ &&\
mkdir -p /home/podman/.config/helix/runtime && cp -r runtime/* /home/podman/.config/helix/runtime/ &&\
mkdir -p /root/.config/helix/runtime && cp -r runtime/* /root/.config/helix/runtime/ &&\



mkdir hxconfig && \
cd hxconfig &&\
wget https://raw.githubusercontent.com/3cnf-f/pubdots/refs/heads/newshit/.config/helix/config.toml &&\
cp config.toml /home/podman/.config/helix/ &&\
cp config.toml /home/ubuntu/.config/helix/ &&\
cp config.toml /root/.config/helix/  &&\
chown -R podman:1000 /home/podman  &&\
chown -R ubuntu:1000 /home/ubuntu 


