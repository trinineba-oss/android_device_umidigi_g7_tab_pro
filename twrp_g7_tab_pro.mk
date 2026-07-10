#
# TWRP Device Product Makefile
#

# Device
PRODUCT_DEVICE := g7_tab_pro
PRODUCT_MODEL := G7_Tab_Pro
PRODUCT_BRAND := UMIDIGI
PRODUCT_MANUFACTURER := UMIDIGI

PRODUCT_SHIPPING_API_LEVEL := 33
PRODUCT_TARGET_API_LEVEL := 33

# Set to product name for lunch combo
PRODUCT_NAME := twrp_g7_tab_pro

# Include common TWRP configuration
$(call inherit-product, vendor/twrp/config/common.mk)
