# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from common a5
-include device/samsung/j3ltespr-common/BoardConfigCommon.mk
-include device/samsung/j3ltespr-common/common.mk
# Inherit from the proprietary version
-include vendor/samsung/j3ltespr/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := j3ltespr,j3ltesprxx

# Kernel
TARGET_KERNEL_CONFIG         := msm8916_sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_j3lte_spr_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig


# TWRP
TW_THEME := portrait_hdpi

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
#TARGET_LIBINIT_DEFINES_FILE := device/samsung/j3ltespr/init/init_j3ltespr.c
