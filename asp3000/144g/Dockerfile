FROM mattrayner/lamp:latest-1404-php5
WORKDIR /root/www/html/
##选择add 自带解压
ADD 144g.tar.gz .
COPY start.sh /root/
RUN  chmod 755 /root/*.sh && chmod 755 /*.sh
EXPOSE 80
CMD ["/root/start.sh"]