FROM mcr.microsoft.com/mssql/server:2017-latest-ubuntu

RUN mkdir -p /opt/scripts
COPY seed.sql /opt/scripts/

ENV MSSQL_SA_PASSWORD=Passw@rd
ENV ACCEPT_EULA=true

RUN /opt/mssql/bin/sqlservr & sleep 60; /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Passw@rd' -d master -i /opt/scripts/seed.sql
