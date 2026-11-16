# Command Reference

Commands below are taken from, or directly organize, the supplied lab. Run them in the indicated terminal/context.

| Command | Where / when | Purpose |
|---|---|---|
| `sudo lab.support.files/scripts/cyberops_topo.py` | CyberOps VM terminal | Starts the lab's Mininet topology. |
| `xterm H1` | Mininet prompt | Opens a terminal for host H1. |
| `xterm H4` | Mininet prompt | Opens a terminal for host H4. |
| `/home/analyst/lab.support.files/scripts/reg_server_start.sh` | H4 terminal | Starts the lab-provided web server. |
| `su analyst` | H1 terminal when logged in as root | Switches to the analyst account so Firefox is not run as root. |
| `firefox &` | H1 terminal as analyst | Starts Firefox in the background. |
| `sudo tcpdump -i H1-eth0 -v -c 50 -w /home/analyst/capture.pcap` | H1 terminal | Captures up to 50 packets on H1-eth0 and writes them to the pcap file. |
| `wireshark &` | H1 terminal | Starts Wireshark in the background. |
| `tcp` | Wireshark display-filter bar | Displays TCP packets in the opened capture. |
| `man tcpdump` | Linux terminal | Opens the tcpdump manual page. |
| `/ -r` | Inside the man page | Searches forward for the `-r` option; type `n` for next match and `q` to quit. |
| `tcpdump -r /home/analyst/capture.pcap tcp -c 3` | Linux terminal | Reads the saved capture and displays the first three TCP packets. |
| `quit` | Mininet prompt | Stops the Mininet session and its topology. |
| `sudo mn -c` | CyberOps VM terminal after quitting Mininet | Cleans up Mininet processes and residual state. |

## Important options

- `-i H1-eth0`: select the capture interface.
- `-v`: verbose output while capturing.
- `-c 50`: stop after 50 packets.
- `-w <file>`: write captured packets to a file.
- `-r <file>`: read packets from an existing capture file.
- `tcp`: tcpdump packet filter expression in the Part 3 command; in Wireshark, `tcp` is a display filter.

## Command-line capture vs. display filter

`tcpdump` uses a capture/read filter expression in its command line. Wireshark's `tcp` text is a display filter applied after opening the capture. They are related but are not interchangeable filter syntaxes.
