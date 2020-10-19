From nginx:alpine
#RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories 
RUN  apk add --no-cache git bash
RUN rm -rf /usr/share/nginx/html
RUN git clone https://github.com/MinhasKamal/DownGit.git /usr/share/nginx/html
EXPOSE 443
EXPOSE 80
