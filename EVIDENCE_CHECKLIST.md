# Evidence Checklist

Capture your own evidence while performing the lab. The names below are suggested, consistent filenames; they are not pre-created screenshots.

| ID | Lab task | Suggested filename | What the screenshot/evidence should show |
|---|---|---|---|
| P1-01 | Start topology | `P1-01-mininet-topology.png` | Successful Mininet topology startup and prompt. |
| P1-02 | Open H1 and H4 terminals | `P1-02-h1-h4-terminals.png` | H1 and H4 terminal windows open. |
| P1-03 | Start web server on H4 | `P1-03-web-server-started.png` | H4 terminal showing the supplied server startup. |
| P1-04 | Start Firefox as analyst | `P1-04-firefox-h1.png` | H1 terminal/user context and Firefox window. |
| P1-05 | Capture traffic | `P1-05-tcpdump-capture.png` | tcpdump command and capture progress/completion. |
| P1-06 | Browse to server | `P1-06-browser-server.png` | Firefox navigating to `172.16.0.40` while capture is active. |
| P2-01 | Open capture in Wireshark | `P2-01-wireshark-capture-open.png` | `capture.pcap` loaded in Wireshark. |
| P2-02 | Apply TCP filter | `P2-02-tcp-filter.png` | `tcp` display filter and filtered packet list. |
| P2-03 | Inspect first handshake packet | `P2-03-client-syn.png` | TCP ports, SYN flag, and relative sequence number. |
| P2-04 | Inspect second handshake packet | `P2-04-server-syn-ack.png` | TCP ports, SYN and ACK flags, sequence and acknowledgment numbers. |
| P2-05 | Inspect third handshake packet | `P2-05-client-ack.png` | ACK flag and relative sequence/acknowledgment numbers. |
| P3-01 | Review tcpdump manual | `P3-01-tcpdump-manpage.png` | Manual page section describing `-r`. |
| P3-02 | Read first three TCP packets | `P3-02-tcpdump-three-packets.png` | Output from the specified `tcpdump -r ... tcp -c 3` command. |
| P3-03 | Stop Mininet | `P3-03-mininet-quit.png` | Mininet shutdown output after `quit`. |
| P3-04 | Clean up Mininet | `P3-04-mininet-cleanup.png` | `sudo mn -c` cleanup command/output. |

## Evidence handling

- Save image files in this `screenshots/` directory using the exact suggested names where possible.
- Keep screenshots readable; include the relevant command, prompt, packet details, or output.
- Do not edit evidence in a way that changes its meaning. Crop only to remove irrelevant desktop space.
- Do not include passwords, private browsing data, unrelated packets, or other sensitive information.
- Put the actual packet capture in `evidence/captures/` only if it is safe to share. A capture is not a screenshot.
- Complete the answer worksheets in `docs/`; screenshots alone do not replace written answers.
