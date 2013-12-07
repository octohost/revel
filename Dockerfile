FROM octohost/go-1.2

RUN go get github.com/robfig/revel; go get github.com/robfig/revel/revel
RUN cd /srv; revel new www
ADD ./index.html /srv/
RUN mv -f /srv/index.html /root/gocode/src/www/app/views/App/Index.html

EXPOSE 9000

CMD revel run www
