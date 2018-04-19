FROM jmoger/gitblit

# Disables the HTTPS port
RUN sed -e "s/server\.httpPort\s=\s0/server\.httpPort = 8080/" \
        -e "s/web\.enableRpcManagement\s=\sfalse/web\.enableRpcManagement = true/" \
        -e "s/web\.enableRpcAdministration\s=\sfalse/web.enableRpcAdministration = true/" \
		-e "s/web\.authenticateViewPages\s=\sfalse/web.authenticateViewPages = true/" \
		-e "s/web\.summaryShowReadme\s=\sfalse/web.summaryShowReadme = true/" \
        /opt/gitblit-data/defaults.properties > /opt/gitblit-data/gitblit.properties

CMD ["java", "-server", "-Xmx1024M", "-Djava.awt.headless=true", "-jar", "/opt/gitblit/gitblit.jar", "--baseFolder", "/opt/gitblit-data"]

EXPOSE 8080 8443 9418 29418