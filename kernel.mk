#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel Modules
KERNEL_MODULES_DIR := $(LOCAL_PATH)/modules

ifneq ($(PRODUCT_TARGET_VNDK_VERSION),)
KERNEL_MODULES_COPY := $(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/lib/modules
else
KERNEL_MODULES_COPY := $(TARGET_COPY_OUT_VENDOR)/lib/modules
endif

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(KERNEL_MODULES_DIR),$(KERNEL_MODULES_COPY))
