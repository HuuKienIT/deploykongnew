FROM kong:latest

ENV KONG_DATABASE=kong_db_n4t0
ENV KONG_PG_DATABASE=kong_db
ENV KONG_PG_USER=kong_db_n4t0_user
ENV KONG_PG_PASSWORD=2fBKEEcEmPQtyDIBYYCUxho2Si0wpVsH
ENV KONG_PG_HOST=dpg-cvcnafaj1k6c73av1sv0-a
ENV KONG_ADMIN_LISTEN=0.0.0.0:8001
ENV KONG_PROXY_LISTEN=0.0.0.0:8000

EXPOSE 8000 8001 8443 8444

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["kong", "start"]
