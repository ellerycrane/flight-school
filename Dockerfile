FROM busybox:latest
COPY ./manifest.yml /
RUN echo "Copied Manifest"
COPY ./app.txt /
RUN echo "Copied App"