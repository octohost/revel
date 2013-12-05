FROM octohost/go-1.2

RUN go get github.com/robfig/revel; go get github.com/robfig/revel/revel
RUN cd /srv; revel new www

EXPOSE 9000

CMD revel run www
