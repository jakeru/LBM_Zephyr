# Copyright (c) 2024 Semtech Corporation - Félix Piédallu
# SPDX-License-Identifier: Apache-2.0

zephyr_include_directories_ifdef(CONFIG_LORA_BASICS_MODEM_RELAY_COMMON
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/common
  ${LBM_SMTC_MODEM_CORE_DIR}/modem_services/relay_service
)

zephyr_library_sources_ifdef(CONFIG_LORA_BASICS_MODEM_RELAY_COMMON
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/common/wake_on_radio.c
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/common/relay_real.c
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/common/wake_on_radio_ral.c
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/common/relay_mac_parser.c
)

zephyr_compile_definitions_ifdef(CONFIG_LORA_BASICS_MODEM_RELAY_TX
  RELAY_TX
)

zephyr_include_directories_ifdef(CONFIG_LORA_BASICS_MODEM_RELAY_TX
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/relay_tx
)

zephyr_library_sources_ifdef(CONFIG_LORA_BASICS_MODEM_RELAY_TX
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/relay_tx/relay_tx_mac_parser.c
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/relay_tx/relay_tx.c
  ${LBM_SMTC_MODEM_CORE_DIR}/modem_services/relay_service/lorawan_relay_tx_service.c
)

zephyr_compile_definitions_ifdef(CONFIG_LORA_BASICS_MODEM_RELAY_RX
  RELAY_RX
)

zephyr_include_directories_ifdef(CONFIG_LORA_BASICS_MODEM_RELAY_RX
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/relay_rx
)

zephyr_library_sources_ifdef(CONFIG_LORA_BASICS_MODEM_RELAY_RX
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/relay_rx/relay_rx.c
  ${LBM_SMTC_MODEM_CORE_DIR}/lr1mac/src/relay/relay_rx/relay_rx_mac_parser.c
  ${LBM_SMTC_MODEM_CORE_DIR}/modem_services/relay_service/lorawan_relay_rx_service.c
)
