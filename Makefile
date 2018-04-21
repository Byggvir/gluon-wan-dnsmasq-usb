include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-wan-dnsmasq
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include ../gluon.mk


define Package/gluon-wan-dnsmasq
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Support for a secondary DNS server using  WAN interface eth0 or usb0 (UMTS / Tethering)
  DEPENDS:=+gluon-core +libubus-lua +dnsmasq +libpacketmark
endef

define Package/gluon-wan-dnsmasq/description
	Gluon community wifi mesh firmware framework: Support for a secondary DNS server using a WAN interface eth0 or usb0 (UMTS / Tethering)
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/gluon-wan-dnsmasq/install
	$(CP) ./files/* $(1)/
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
endef

$(eval $(call BuildPackage,gluon-wan-dnsmasq))
