# This file can be added to the current NSO project root directory to add functionality to the current Makefile that is
# created when one starts a project with the ncs-project command.  This is the project specific settings that will be used
# by the general use setupsimulation.mk.  The purpose is to be able to use the same setupsimulation.mk file while putting
# specific project settings in this file.  To incorporate into the project please add the following lines to the
# Makefile of the project
#
# include ./simulation.mk
# include $(NSO_TOOLS_DIR)/setupsimulation.mk

# The version of NSO to base this on
NSO_VERSION = 5.2.1
# Directory where packages that should be included in the PROJECT_PACKAGES directory with
# symbolic links
LOCAL_PACKAGES_DIR = /root/nso-packages
# Packages that are in the LOCAL_PACKAGES_DIR that will be symbolically link in the PROJECT_PACKAGES
# directory
#LOCAL_PACKAGES = 
LOCAL_PACKAGES += ftdv-ngfw itd-service service-base
LOCAL_PACKAGES += cisco-etsi-nfvo 
LOCAL_PACKAGES += cisco-fmc-gen-1.3

# List of simulated [device name prefixes:number of devices(0 if no netsim devices of this type should be created
# but the NED should be present):device-types (NEDS)] that will be used
# DEVICES = asr-nyc:1:cisco-iosxr asr-lon:1:cisco-iosxr ios:2:cisco-ios pnp-ned:0:cisco-pnp
DEVICES += cisco-ftd-fix:0:cisco-ftd-fix
DEVICES += cisco-nx:0:cisco-nx
#DEVICES += cisco-fmc:0:cisco-fmc
DEVICES += esc:0:esc
#DEVICES += vmware-vsphere:0:vmware-vsphere
DEVICES += resource-manager:0:resource-manager
#DEVICES += cisco-etsi-nfvo:0:cisco-etsi-nfvo
DEVICES += openstack-cos:0:openstack-cos
DEVICES += etsi-sol003:0:etsi-sol003
#DEVICES += tailf-etsi-rel2-nfvo-esc:0:tailf-etsi-rel2-nfvo-esc
#DEVICES += tailf-etsi-rel2-nfvo-examples:0:tailf-etsi-rel2-nfvo-examples
#DEVICES += tailf-etsi-rel2-nfvo-project:0:tailf-etsi-rel2-nfvo-project
#DEVICES += tailf-etsi-rel2-nfvo-ui:0:tailf-etsi-rel2-nfvo-ui

# Where the NEDs are located and soft links will be created to
NSO_NEDS = /root/nso/neds/$(NSO_VERSION)

# The NETSIM directory to use
NETSIM_DIR = netsim

# The directory to load initial data (xml files) into NSO from
INIT_DATA_DIR = init_data

# Directories listed here will have their contents deleted during the clean operation and recreated as 
# part of the build operation
NSO_DIRS = ncs-cdb state logs logs/rollback $(NETSIM_DIR) $(INIT_DATA_DIR) 

# Where the project packages located
PROJECT_PACKAGES = packages

# Directories with where xml data files that should be loaded after NSO is started
NSO_POST_START_DATA_DIR = project_data

NSO_TOOLS_DIR=/root/nsotools
