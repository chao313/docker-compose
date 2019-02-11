FROM ubuntu
COPY jre-8u201-linux-x64.tar /root/
## ENV 用于配置环境变量 -> 这里直接配置了PATH
ENV PATH /usr/local/jre8/bin:$PATH
RUN mkdir /usr/local/jre8 \
    && tar -xvf /root/jre-8u201-linux-x64.tar --strip-components 1 -C /usr/local/jre8
EXPOSE 80
