#!/bin/sh


echo "===> SUME_MICROBLAZE_AXI_IIC_BASEADDR (0x40800000)"

echo "===> SUME_MICROBLAZE_UARTLITE_BASEADDR (0x40600000)"

echo "===> SUME_MICROBLAZE_DLMB_BRAM_BASEADDR (0x00000000)"

echo "===> SUME_MICROBLAZE_ILMB_BRAM_BASEADDR (0x00000000)"

echo "===> SUME_MICROBLAZE_AXI_INTC_BASEADDR (0x41200000)"

echo "===> SUME_INPUT_ARBITER_BASEADDR (0x44010000)"
echo -n "SUME_INPUT_ARBITER_0_ID_OFFSET: "
./rwaxi -a 0x44010000
echo -n "SUME_INPUT_ARBITER_0_VERSION_OFFSET: "
./rwaxi -a 0x44010004
echo -n "SUME_INPUT_ARBITER_0_RESET_OFFSET: "
./rwaxi -a 0x44010008
echo -n "SUME_INPUT_ARBITER_0_FLIP_OFFSET: "
./rwaxi -a 0x4401000c
echo -n "SUME_INPUT_ARBITER_0_DEBUG_OFFSET: "
./rwaxi -a 0x44010010
echo -n "SUME_INPUT_ARBITER_0_PKTIN_OFFSET: "
./rwaxi -a 0x44010014
echo -n "SUME_INPUT_ARBITER_0_PKTOUT_OFFSET: "
./rwaxi -a 0x44010018

echo "===> SUME_OUTPUT_QUEUES_BASEADDR (0x44030000)"
echo -n "SUME_OUTPUT_QUEUES_0_ID_OFFSET: "
./rwaxi -a 0x44030000
echo -n "SUME_OUTPUT_QUEUES_0_VERSION_OFFSET: "
./rwaxi -a 0x44030004
echo -n "SUME_OUTPUT_QUEUES_0_RESET_OFFSET: "
./rwaxi -a 0x44030008
echo -n "SUME_OUTPUT_QUEUES_0_FLIP_OFFSET: "
./rwaxi -a 0x4403000c
echo -n "SUME_OUTPUT_QUEUES_0_DEBUG_OFFSET: "
./rwaxi -a 0x44030010
echo -n "SUME_OUTPUT_QUEUES_0_PKTIN_OFFSET: "
./rwaxi -a 0x44030014
echo -n "SUME_OUTPUT_QUEUES_0_PKTOUT_OFFSET: "
./rwaxi -a 0x44030018
echo -n "SUME_OUTPUT_QUEUES_0_PKTSTOREDPORT0_OFFSET: "
./rwaxi -a 0x4403001c
echo -n "SUME_OUTPUT_QUEUES_0_BYTESSTOREDPORT0_OFFSET: "
./rwaxi -a 0x44030020
echo -n "SUME_OUTPUT_QUEUES_0_PKTREMOVEDPORT0_OFFSET: "
./rwaxi -a 0x44030024
echo -n "SUME_OUTPUT_QUEUES_0_BYTESREMOVEDPORT0_OFFSET: "
./rwaxi -a 0x44030028
echo -n "SUME_OUTPUT_QUEUES_0_PKTDROPPEDPORT0_OFFSET: "
./rwaxi -a 0x4403002c
echo -n "SUME_OUTPUT_QUEUES_0_BYTESDROPPEDPORT0_OFFSET: "
./rwaxi -a 0x44030030
echo -n "SUME_OUTPUT_QUEUES_0_PKTINQUEUEPORT0_OFFSET: "
./rwaxi -a 0x44030034
echo -n "SUME_OUTPUT_QUEUES_0_PKTSTOREDPORT1_OFFSET: "
./rwaxi -a 0x44030038
echo -n "SUME_OUTPUT_QUEUES_0_BYTESSTOREDPORT1_OFFSET: "
./rwaxi -a 0x4403003c
echo -n "SUME_OUTPUT_QUEUES_0_PKTREMOVEDPORT1_OFFSET: "
./rwaxi -a 0x44030040
echo -n "SUME_OUTPUT_QUEUES_0_BYTESREMOVEDPORT1_OFFSET: "
./rwaxi -a 0x44030044
echo -n "SUME_OUTPUT_QUEUES_0_PKTDROPPEDPORT1_OFFSET: "
./rwaxi -a 0x44030048
echo -n "SUME_OUTPUT_QUEUES_0_BYTESDROPPEDPORT1_OFFSET: "
./rwaxi -a 0x4403004c
echo -n "SUME_OUTPUT_QUEUES_0_PKTINQUEUEPORT1_OFFSET: "
./rwaxi -a 0x44030050
echo -n "SUME_OUTPUT_QUEUES_0_PKTSTOREDPORT2_OFFSET: "
./rwaxi -a 0x44030054
echo -n "SUME_OUTPUT_QUEUES_0_BYTESSTOREDPORT2_OFFSET: "
./rwaxi -a 0x44030058
echo -n "SUME_OUTPUT_QUEUES_0_PKTREMOVEDPORT2_OFFSET: "
./rwaxi -a 0x4403005c
echo -n "SUME_OUTPUT_QUEUES_0_BYTESREMOVEDPORT2_OFFSET: "
./rwaxi -a 0x44030060
echo -n "SUME_OUTPUT_QUEUES_0_PKTDROPPEDPORT2_OFFSET: "
./rwaxi -a 0x44030064
echo -n "SUME_OUTPUT_QUEUES_0_BYTESDROPPEDPORT2_OFFSET: "
./rwaxi -a 0x44030068
echo -n "SUME_OUTPUT_QUEUES_0_PKTINQUEUEPORT2_OFFSET: "
./rwaxi -a 0x4403006c
echo -n "SUME_OUTPUT_QUEUES_0_PKTSTOREDPORT3_OFFSET: "
./rwaxi -a 0x44030070
echo -n "SUME_OUTPUT_QUEUES_0_BYTESSTOREDPORT3_OFFSET: "
./rwaxi -a 0x44030074
echo -n "SUME_OUTPUT_QUEUES_0_PKTREMOVEDPORT3_OFFSET: "
./rwaxi -a 0x44030078
echo -n "SUME_OUTPUT_QUEUES_0_BYTESREMOVEDPORT3_OFFSET: "
./rwaxi -a 0x4403007c
echo -n "SUME_OUTPUT_QUEUES_0_PKTDROPPEDPORT3_OFFSET: "
./rwaxi -a 0x44030080
echo -n "SUME_OUTPUT_QUEUES_0_BYTESDROPPEDPORT3_OFFSET: "
./rwaxi -a 0x44030084
echo -n "SUME_OUTPUT_QUEUES_0_PKTINQUEUEPORT3_OFFSET: "
./rwaxi -a 0x44030088
echo -n "SUME_OUTPUT_QUEUES_0_PKTSTOREDPORT4_OFFSET: "
./rwaxi -a 0x4403008c
echo -n "SUME_OUTPUT_QUEUES_0_BYTESSTOREDPORT4_OFFSET: "
./rwaxi -a 0x44030090
echo -n "SUME_OUTPUT_QUEUES_0_PKTREMOVEDPORT4_OFFSET: "
./rwaxi -a 0x44030094
echo -n "SUME_OUTPUT_QUEUES_0_BYTESREMOVEDPORT4_OFFSET: "
./rwaxi -a 0x44030098
echo -n "SUME_OUTPUT_QUEUES_0_PKTDROPPEDPORT4_OFFSET: "
./rwaxi -a 0x4403009c
echo -n "SUME_OUTPUT_QUEUES_0_BYTESDROPPEDPORT4_OFFSET: "
./rwaxi -a 0x440300a0
echo -n "SUME_OUTPUT_QUEUES_0_PKTINQUEUEPORT4_OFFSET: "
./rwaxi -a 0x440300a4

echo "===> SUME_OUTPUT_PORT_LOOKUP_BASEADDR (0x44020000)"
echo -n "SUME_OUTPUT_PORT_LOOKUP_0_ID_OFFSET: "
./rwaxi -a 0x44020000
echo -n "SUME_OUTPUT_PORT_LOOKUP_0_VERSION_OFFSET: "
./rwaxi -a 0x44020004
echo -n "SUME_OUTPUT_PORT_LOOKUP_0_RESET_OFFSET: "
./rwaxi -a 0x44020008
echo -n "SUME_OUTPUT_PORT_LOOKUP_0_FLIP_OFFSET: "
./rwaxi -a 0x4402000c
echo -n "SUME_OUTPUT_PORT_LOOKUP_0_DEBUG_OFFSET: "
./rwaxi -a 0x44020010
echo -n "SUME_OUTPUT_PORT_LOOKUP_0_PKTIN_OFFSET: "
./rwaxi -a 0x44020014
echo -n "SUME_OUTPUT_PORT_LOOKUP_0_PKTOUT_OFFSET: "
./rwaxi -a 0x44020018
echo -n "SUME_OUTPUT_PORT_LOOKUP_0_LUTHIT_OFFSET: "
./rwaxi -a 0x4402001c
echo -n "SUME_OUTPUT_PORT_LOOKUP_0_LUTMISS_OFFSET: "
./rwaxi -a 0x44020020

echo "===> SUME_NF_10G_INTERFACE0_BASEADDR (0x44040000)"
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_ID_OFFSET: "
./rwaxi -a 0x44040000
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_VERSION_OFFSET: "
./rwaxi -a 0x44040004
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_RESET_OFFSET: "
./rwaxi -a 0x44040008
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_FLIP_OFFSET: "
./rwaxi -a 0x4404000c
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_DEBUG_OFFSET: "
./rwaxi -a 0x44040010
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_INTERFACEID_OFFSET: "
./rwaxi -a 0x44040014
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PKTIN_OFFSET: "
./rwaxi -a 0x44040018
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PKTOUT_OFFSET: "
./rwaxi -a 0x4404001c
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_MACSTATUSVECTOR_OFFSET: "
./rwaxi -a 0x44040020
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUS_OFFSET: "
./rwaxi -a 0x44040024
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR0_OFFSET: "
./rwaxi -a 0x44040028
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR1_OFFSET: "
./rwaxi -a 0x4404002c
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR2_OFFSET: "
./rwaxi -a 0x44040030
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR3_OFFSET: "
./rwaxi -a 0x44040034
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR4_OFFSET: "
./rwaxi -a 0x44040038
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR5_OFFSET: "
./rwaxi -a 0x4404003c
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR6_OFFSET: "
./rwaxi -a 0x44040040
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR7_OFFSET: "
./rwaxi -a 0x44040044
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR8_OFFSET: "
./rwaxi -a 0x44040048
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR9_OFFSET: "
./rwaxi -a 0x4404004c
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR10_OFFSET: "
./rwaxi -a 0x44040050
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR11_OFFSET: "
./rwaxi -a 0x44040054
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR12_OFFSET: "
./rwaxi -a 0x44040058
echo -n "SUME_NF_10G_INTERFACE_SHARED_0_PCSPMASTATUSVECTOR13_OFFSET: "
./rwaxi -a 0x4404005c

echo "===> SUME_NF_10G_INTERFACE1_BASEADDR (0x44050000)"
echo -n "SUME_NF_10G_INTERFACE_1_ID_OFFSET: "
./rwaxi -a 0x44050000
echo -n "SUME_NF_10G_INTERFACE_1_VERSION_OFFSET: "
./rwaxi -a 0x44050004
echo -n "SUME_NF_10G_INTERFACE_1_RESET_OFFSET: "
./rwaxi -a 0x44050008
echo -n "SUME_NF_10G_INTERFACE_1_FLIP_OFFSET: "
./rwaxi -a 0x4405000c
echo -n "SUME_NF_10G_INTERFACE_1_DEBUG_OFFSET: "
./rwaxi -a 0x44050010
echo -n "SUME_NF_10G_INTERFACE_1_INTERFACEID_OFFSET: "
./rwaxi -a 0x44050014
echo -n "SUME_NF_10G_INTERFACE_1_PKTIN_OFFSET: "
./rwaxi -a 0x44050018
echo -n "SUME_NF_10G_INTERFACE_1_PKTOUT_OFFSET: "
./rwaxi -a 0x4405001c
echo -n "SUME_NF_10G_INTERFACE_1_MACSTATUSVECTOR_OFFSET: "
./rwaxi -a 0x44050020
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUS_OFFSET: "
./rwaxi -a 0x44050024
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR0_OFFSET: "
./rwaxi -a 0x44050028
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR1_OFFSET: "
./rwaxi -a 0x4405002c
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR2_OFFSET: "
./rwaxi -a 0x44050030
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR3_OFFSET: "
./rwaxi -a 0x44050034
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR4_OFFSET: "
./rwaxi -a 0x44050038
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR5_OFFSET: "
./rwaxi -a 0x4405003c
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR6_OFFSET: "
./rwaxi -a 0x44050040
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR7_OFFSET: "
./rwaxi -a 0x44050044
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR8_OFFSET: "
./rwaxi -a 0x44050048
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR9_OFFSET: "
./rwaxi -a 0x4405004c
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR10_OFFSET: "
./rwaxi -a 0x44050050
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR11_OFFSET: "
./rwaxi -a 0x44050054
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR12_OFFSET: "
./rwaxi -a 0x44050058
echo -n "SUME_NF_10G_INTERFACE_1_PCSPMASTATUSVECTOR13_OFFSET: "
./rwaxi -a 0x4405005c

echo "===> SUME_NF_10G_INTERFACE2_BASEADDR (0x44060000)"
echo -n "SUME_NF_10G_INTERFACE_2_ID_OFFSET: "
./rwaxi -a 0x44060000
echo -n "SUME_NF_10G_INTERFACE_2_VERSION_OFFSET: "
./rwaxi -a 0x44060004
echo -n "SUME_NF_10G_INTERFACE_2_RESET_OFFSET: "
./rwaxi -a 0x44060008
echo -n "SUME_NF_10G_INTERFACE_2_FLIP_OFFSET: "
./rwaxi -a 0x4406000c
echo -n "SUME_NF_10G_INTERFACE_2_DEBUG_OFFSET: "
./rwaxi -a 0x44060010
echo -n "SUME_NF_10G_INTERFACE_2_INTERFACEID_OFFSET: "
./rwaxi -a 0x44060014
echo -n "SUME_NF_10G_INTERFACE_2_PKTIN_OFFSET: "
./rwaxi -a 0x44060018
echo -n "SUME_NF_10G_INTERFACE_2_PKTOUT_OFFSET: "
./rwaxi -a 0x4406001c
echo -n "SUME_NF_10G_INTERFACE_2_MACSTATUSVECTOR_OFFSET: "
./rwaxi -a 0x44060020
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUS_OFFSET: "
./rwaxi -a 0x44060024
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR0_OFFSET: "
./rwaxi -a 0x44060028
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR1_OFFSET: "
./rwaxi -a 0x4406002c
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR2_OFFSET: "
./rwaxi -a 0x44060030
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR3_OFFSET: "
./rwaxi -a 0x44060034
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR4_OFFSET: "
./rwaxi -a 0x44060038
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR5_OFFSET: "
./rwaxi -a 0x4406003c
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR6_OFFSET: "
./rwaxi -a 0x44060040
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR7_OFFSET: "
./rwaxi -a 0x44060044
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR8_OFFSET: "
./rwaxi -a 0x44060048
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR9_OFFSET: "
./rwaxi -a 0x4406004c
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR10_OFFSET: "
./rwaxi -a 0x44060050
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR11_OFFSET: "
./rwaxi -a 0x44060054
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR12_OFFSET: "
./rwaxi -a 0x44060058
echo -n "SUME_NF_10G_INTERFACE_2_PCSPMASTATUSVECTOR13_OFFSET: "
./rwaxi -a 0x4406005c

echo "===> SUME_NF_10G_INTERFACE3_BASEADDR (0x44070000)"
echo -n "SUME_NF_10G_INTERFACE_3_ID_OFFSET: "
./rwaxi -a 0x44070000
echo -n "SUME_NF_10G_INTERFACE_3_VERSION_OFFSET: "
./rwaxi -a 0x44070004
echo -n "SUME_NF_10G_INTERFACE_3_RESET_OFFSET: "
./rwaxi -a 0x44070008
echo -n "SUME_NF_10G_INTERFACE_3_FLIP_OFFSET: "
./rwaxi -a 0x4407000c
echo -n "SUME_NF_10G_INTERFACE_3_DEBUG_OFFSET: "
./rwaxi -a 0x44070010
echo -n "SUME_NF_10G_INTERFACE_3_INTERFACEID_OFFSET: "
./rwaxi -a 0x44070014
echo -n "SUME_NF_10G_INTERFACE_3_PKTIN_OFFSET: "
./rwaxi -a 0x44070018
echo -n "SUME_NF_10G_INTERFACE_3_PKTOUT_OFFSET: "
./rwaxi -a 0x4407001c
echo -n "SUME_NF_10G_INTERFACE_3_MACSTATUSVECTOR_OFFSET: "
./rwaxi -a 0x44070020
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUS_OFFSET: "
./rwaxi -a 0x44070024
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR0_OFFSET: "
./rwaxi -a 0x44070028
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR1_OFFSET: "
./rwaxi -a 0x4407002c
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR2_OFFSET: "
./rwaxi -a 0x44070030
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR3_OFFSET: "
./rwaxi -a 0x44070034
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR4_OFFSET: "
./rwaxi -a 0x44070038
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR5_OFFSET: "
./rwaxi -a 0x4407003c
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR6_OFFSET: "
./rwaxi -a 0x44070040
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR7_OFFSET: "
./rwaxi -a 0x44070044
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR8_OFFSET: "
./rwaxi -a 0x44070048
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR9_OFFSET: "
./rwaxi -a 0x4407004c
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR10_OFFSET: "
./rwaxi -a 0x44070050
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR11_OFFSET: "
./rwaxi -a 0x44070054
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR12_OFFSET: "
./rwaxi -a 0x44070058
echo -n "SUME_NF_10G_INTERFACE_3_PCSPMASTATUSVECTOR13_OFFSET: "
./rwaxi -a 0x4407005c

echo "===> SUME_NF_RIFFA_DMA_BASEADDR (0x44080000)"
echo -n "SUME_NF_RIFFA_DMA_0_ID_OFFSET: "
./rwaxi -a 0x44080000
echo -n "SUME_NF_RIFFA_DMA_0_VERSION_OFFSET: "
./rwaxi -a 0x44080004
echo -n "SUME_NF_RIFFA_DMA_0_RESET_OFFSET: "
./rwaxi -a 0x44080008
echo -n "SUME_NF_RIFFA_DMA_0_FLIP_OFFSET: "
./rwaxi -a 0x4408000c
echo -n "SUME_NF_RIFFA_DMA_0_DEBUG_OFFSET: "
./rwaxi -a 0x44080010
echo -n "SUME_NF_RIFFA_DMA_0_RQPKT_OFFSET: "
./rwaxi -a 0x44080014
echo -n "SUME_NF_RIFFA_DMA_0_RCPKT_OFFSET: "
./rwaxi -a 0x44080018
echo -n "SUME_NF_RIFFA_DMA_0_CQPKT_OFFSET: "
./rwaxi -a 0x4408001c
echo -n "SUME_NF_RIFFA_DMA_0_CCPKT_OFFSET: "
./rwaxi -a 0x44080020
echo -n "SUME_NF_RIFFA_DMA_0_XGETXPKT_OFFSET: "
./rwaxi -a 0x44080024
echo -n "SUME_NF_RIFFA_DMA_0_XGERXPKT_OFFSET: "
./rwaxi -a 0x44080028
echo -n "SUME_NF_RIFFA_DMA_0_PCIERQ_OFFSET: "
./rwaxi -a 0x4408002c
echo -n "SUME_NF_RIFFA_DMA_0_PCIEPHY_OFFSET: "
./rwaxi -a 0x44080030
echo -n "SUME_NF_RIFFA_DMA_0_PCIECONFIG_OFFSET: "
./rwaxi -a 0x44080034
echo -n "SUME_NF_RIFFA_DMA_0_PCIECONFIG2_OFFSET: "
./rwaxi -a 0x44080038
echo -n "SUME_NF_RIFFA_DMA_0_PCIEERROR_OFFSET: "
./rwaxi -a 0x4408003c
echo -n "SUME_NF_RIFFA_DMA_0_PCIEMISC_OFFSET: "
./rwaxi -a 0x44080040
echo -n "SUME_NF_RIFFA_DMA_0_PCIETPH_OFFSET: "
./rwaxi -a 0x44080044
echo -n "SUME_NF_RIFFA_DMA_0_PCIEFC1_OFFSET: "
./rwaxi -a 0x44080048
echo -n "SUME_NF_RIFFA_DMA_0_PCIEFC2_OFFSET: "
./rwaxi -a 0x4408004c
echo -n "SUME_NF_RIFFA_DMA_0_PCIEFC3_OFFSET: "
./rwaxi -a 0x44080050
echo -n "SUME_NF_RIFFA_DMA_0_PCIEINTERRUPT_OFFSET: "
./rwaxi -a 0x44080054
echo -n "SUME_NF_RIFFA_DMA_0_PCIEMSIDATA_OFFSET: "
./rwaxi -a 0x44080058
echo -n "SUME_NF_RIFFA_DMA_0_PCIEMSIINT_OFFSET: "
./rwaxi -a 0x4408005c
echo -n "SUME_NF_RIFFA_DMA_0_PCIEMSIPENDINGSTATUS_OFFSET: "
./rwaxi -a 0x44080060
echo -n "SUME_NF_RIFFA_DMA_0_PCIEMSIPENDINGSTATUS2_OFFSET: "
./rwaxi -a 0x44080064
echo -n "SUME_NF_RIFFA_DMA_0_PCIEINTERRUPT2_OFFSET: "
./rwaxi -a 0x44080068

echo "===> SUME_CRYPTO_BASEADDR (0x44090000)"
echo -n "SUME_CRYPTO_0_ID_OFFSET: "
./rwaxi -a 0x44090000
echo -n "SUME_CRYPTO_0_VERSION_OFFSET: "
./rwaxi -a 0x44090004
echo -n "SUME_CRYPTO_0_RESET_OFFSET: "
./rwaxi -a 0x44090008
echo -n "SUME_CRYPTO_0_FLIP_OFFSET: "
./rwaxi -a 0x4409000c
echo -n "SUME_CRYPTO_0_DEBUG_OFFSET: "
./rwaxi -a 0x44090010
echo -n "SUME_CRYPTO_0_PKTIN_OFFSET: "
./rwaxi -a 0x44090014
echo -n "SUME_CRYPTO_0_PKTOUT_OFFSET: "
./rwaxi -a 0x44090018
echo -n "SUME_CRYPTO_0_KEY_OFFSET: "
./rwaxi -a 0x4409001c
