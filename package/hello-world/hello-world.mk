################################################################################
#
# backbone
#
################################################################################

HELLO_WORLD_VERSION = 1
HELLO_WORLD_LICENSE = MIT
HELLO_WORLD_DEPENDENCIES = 
HELLO_WORLD_SITE_METHOD = local
HELLO_WORLD_SITE = $(BR2_EXTERNAL_HELLO_WORLD_PATH)/src/hello-world

define HELLO_WORLD_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) \
		LDLIBS="$(TARGET_LDFLAGS)"
endef

define HELLO_WORLD_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) \
		DESTDIR="$(TARGET_DIR)" \
		PREFIX="usr" install
endef

$(eval $(generic-package))
