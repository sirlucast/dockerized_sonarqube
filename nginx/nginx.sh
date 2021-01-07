#!/usr/bin/env sh
export DOLLAR=$

# Espera que el servicio de sonarqube haya sido lanzado
echo "### DDT: NGINX -- WAITING FOR SONARQUBE"
export API_STATUS_CMD="wget --server-response --spider http://sonarqube:9000 2>&1 | grep "HTTP/" | awk '{print $2}'"
while [ -z "$(eval ${API_STATUS_CMD})" ]; do sleep 1s; done