TARGET_USE_ACPIO := true
BOARD_ACPIOIMAGE_PARTITION_SIZE := $$(({{partition_size}} * 1024 *1024))

BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

{{^slot-ab}}
BOARD_RECOVERY_ACPIO = $(ACPIO_BIN)
BOARD_INCLUDE_RECOVERY_ACPIO := true
{{/slot-ab}}
{{#slot-ab}}
AB_OTA_PARTITIONS += acpio
{{/slot-ab}}
