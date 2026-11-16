# scripts/

Small helper scripts for the specific capture and review steps in this lab. Run them only inside the supplied CyberOps/Mininet environment and from the appropriate H1 terminal.

- `capture_handshake.sh` — runs the lab's 50-packet capture command on H1.
- `read_first_three_tcp_packets.sh` — displays the first three TCP packets from the saved pcap.

The lab's topology and web-server startup scripts are supplied by the VM under `lab.support.files`; they are not recreated or copied into this repository.
