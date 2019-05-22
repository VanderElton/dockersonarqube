FROM sonarqube:7.4-community

MAINTAINER Vander M

RUN mkdir -p $HOME/plugins

# Plugins

ENV SWIFT_PLUGIN_VERSION 0.4.4
RUN set -x && curl -sLo $HOME/plugins/backelite-sonar-swift-plugin-${SWIFT_PLUGIN_VERSION}.jar \
	https://github.com/Backelite/sonar-swift/releases/download/${SWIFT_PLUGIN_VERSION}/backelite-sonar-swift-plugin-${SWIFT_PLUGIN_VERSION}.jar

# End Plugins

RUN cp $HOME/plugins/* $SONARQUBE_HOME/extensions/plugins
