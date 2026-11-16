# Wireshark: Observe the TCP 3-Way Handshake

A beginner-friendly, GitHub-ready documentation project for the Cisco CyberOps lab **“Using Wireshark to Observe the TCP 3-Way Handshake.”**

## Lab purpose

Capture traffic between Mininet host H1 and the web server on H4, inspect the TCP connection setup in Wireshark, and read the saved capture with `tcpdump`. The central learning objective is to identify the SYN, SYN/ACK, and ACK packets that establish a TCP session.

## Lab objectives

1. Prepare the hosts to capture traffic.
2. Analyze the packets using Wireshark.
3. View the packets using `tcpdump`.

## Environment and requirements

- CyberOps Workstation virtual machine.
- Mininet topology supplied by the lab environment.
- Mininet hosts H1 and H4.
- Web server startup script supplied by the lab environment.
- Firefox, Wireshark, and `tcpdump`.
- The lab uses H1 interface `H1-eth0`, server address `172.16.0.40`, and capture path `/home/analyst/capture.pcap`.

> **Environment note:** The commands and paths below are those specified by the source lab. They depend on the Cisco CyberOps VM and its supplied `lab.support.files`. They are not expected to work unchanged on an ordinary Kali or Ubuntu installation.

## Repository map

```text
wireshark-tcp-three-way-handshake/
├── README.md
├── COMMANDS.md
├── EVIDENCE_CHECKLIST.md
├── LICENSE
├── .gitignore
├── commands/
├── docs/
├── scripts/
├── screenshots/
└── evidence/
    └── captures/
```

See each directory's README for what belongs there.

## Lab workflow

### Part 1 — Prepare the hosts and capture traffic

1. Start the CyberOps VM and log in as `analyst`.
2. Start the Mininet topology:

   ```bash
   sudo lab.support.files/scripts/cyberops_topo.py
   ```

3. At the Mininet prompt, open terminals for H1 and H4:

   ```text
   mininet> xterm H1
   mininet> xterm H4
   ```

4. In the H4 terminal, start the supplied web server:

   ```bash
   /home/analyst/lab.support.files/scripts/reg_server_start.sh
   ```

5. In the H1 terminal, switch from root to `analyst`, then start Firefox:

   ```bash
   su analyst
   firefox &
   ```

6. In the H1 terminal, start the 50-packet capture:

   ```bash
   sudo tcpdump -i H1-eth0 -v -c 50 -w /home/analyst/capture.pcap
   ```

7. While the capture is running, browse to `172.16.0.40` in Firefox. The capture stops after 50 packets.

### Part 2 — Analyze the capture in Wireshark

1. In H1, start Wireshark:

   ```bash
   wireshark &
   ```

2. Open `/home/analyst/capture.pcap` using **File → Open**.
3. Apply the display filter:

   ```text
   tcp
   ```

4. Inspect the first three relevant handshake frames. Expand **Transmission Control Protocol** and **Flags** in the packet details.
5. Record the source/destination ports, port classifications, set flags, and relative sequence/acknowledgment numbers in `docs/analysis-worksheet.md`.

The lab's packet sequence is the TCP three-way handshake:
- Frame 1: client SYN.
- Frame 2: server SYN/ACK.
- Frame 3: client ACK.

Use the actual capture to verify the values; do not assume every run has identical ephemeral ports or sequence values.

### Part 3 — View packets with tcpdump

1. Read the tcpdump manual:

   ```bash
   man tcpdump
   ```

   Search within the manual using `/` followed by a term, `n` for the next match, and `q` to quit. The lab asks what `-r` does.

2. Read the first three TCP packets from the saved capture:

   ```bash
   tcpdump -r /home/analyst/capture.pcap tcp -c 3
   ```

3. Stop Mininet from its main prompt:

   ```text
   mininet> quit
   ```

4. Clean up Mininet processes:

   ```bash
   sudo mn -c
   ```

## Deliverables to add after completing the lab

- Screenshots named according to `screenshots/README.md`.
- Your completed answers in `docs/analysis-worksheet.md`.
- Your completed reflection answers in `docs/reflection-worksheet.md`.
- Optionally, your own packet capture in `evidence/captures/` if it is appropriate to share and contains no sensitive traffic.

No screenshots, packet captures, or completed answers are included in this starter repository. Add only evidence you personally collect.

## Safety and sharing

Perform the activity only in the supplied authorized lab environment. Inspect captures before publishing them: packet captures can contain IP addresses, hostnames, URLs, and other identifying or sensitive traffic. Do not publish credentials or unrelated traffic.

## Source

Based on the user-provided Cisco NetAcad lab PDF, **“Lab - Using Wireshark to Observe the TCP 3-Way Handshake”** (6 pages; © 2018–2020 Cisco and/or its affiliates). The source PDF is not redistributed in this repository. Follow its lab environment and instructions where they differ from this repository's explanatory notes.
