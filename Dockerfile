FROM nextcloud:12.0.4
COPY heroku-entrypoint.sh /heroku-entrypoint.sh
COPY ./ports.conf /etc/apache2/ports.conf
copy ./apache.conf /etc/apache2/sites-enabled/000-default.cong
ENTRYPOINT ["/heroku-entrypoint.sh"]
CMD ["apache2-foreground"]
