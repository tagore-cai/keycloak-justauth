ARG keycloak_image=18.0.2

FROM quay.io/keycloak/keycloak:${keycloak_image}

ARG keycloak_version=18.0.2

## copy temp
COPY temp/* /opt/jboss/keycloak/themes/base/admin/resources/partials/
## copy icon
COPY ui/font_iconfont /opt/jboss/keycloak/themes/keycloak/common/resources/lib/font_iconfont
## copy theme.properties
COPY ui/theme.properties /opt/jboss/keycloak/themes/keycloak/login/
## copy jar
COPY target/keycloak-justauth-${keycloak_version}-jar-with-dependencies.jar /opt/jboss/keycloak/providers/keycloak-justauth.jar
