FROM lambci/lambda:build-nodejs8.10

RUN yum install -y cairo cairo-devel libjpeg-turbo-devel pango pango-devel giflib-devel
RUN mkdir lib
RUN cp /usr/lib64/{libpango-1.0.so.0,libpangocairo-1.0.so.0,libpangoft2-1.0.so.0} .

ENV LDFLAGS=-Wl,-rpath=/var/task/
RUN npm install canvas@next

RUN zip -r /var/task/awslambda-canvas.zip node_modules/canvas libpango*
