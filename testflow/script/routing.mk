#!make
include .env

#config: 
#	sed -i s/TEST_OS_VERSION\c/export TEST_OS_VERSION=${OS}/g
#	sed -i s/ TEST_WAN_MODE\c/export TEST_WAN_MODE=${WAN}/g
#	sed -i s/TEST_ROUTE_NUM\c/export TEST_ROUTE_NUM=${NUM}/g

create-proj-18-s-dhcp:
	make -C ${TEST_PROJ} create-dev OS_VERSION=18.04 WAN_MODE=dhcp ROUTE_NUM=single
create-proj-16-s-dhcp:
	make -C ${TEST_PROJ} create-dev OS_VERSION=16.04 WAN_MODE=dhcp ROUTE_NUM=single
