# netbird-cloud-local-siem

## 🔒 Secure Cloud-Local Log Aggregation with Self-Hosted NetBird
A privacy-first solution for aggregating 500k+ daily logs into Security Onion/Azure Sentinel.

- **Enterprise Problem**: Fragmented cloud/on-prem logging cripples threat detection. Commercial solutions cost $15k+/month.
- **My Solution**: Self-hosted NetBird (WireGuard-based) — $0 cost, full data ownership, 40% faster log ingestion.

### 📊 Tailscale vs NetBird (CSV)
```csv
Metric,Tailscale (Managed),NetBird (Self-Hosted)
Log ingestion speed,12.3 logs/sec,17.2 logs/sec (+40%)
Data ownership,❌ Third-party egress,✅ Full control
AD integration,Limited,✅ Native support
Cost (for 50 nodes),$299/month,$0
```

## 🛠️ Architecture Overview

### Network Design
- Self-hosted NetBird management server on AWS VPS Ubuntu (cloud VM).
- Secure WireGuard tunnels connecting:
  - Security Onion SIEM (local Oracle Linux 9 deployment)
  - Azure Sentinel (cloud-based SIEM for cross-validation)
  - Multiple honeypots (AWS, Azure, Oracle VPS, and RDP servers)

### Log Collection Strategy
#### ✅ Enterprise-Grade Log Ingestion via Elastic Fleet
- Deployed Elastic Agents on 15+ endpoints (local VMs, cloud honeypots, RDPs).
- Zero-trust telemetry flow over NetBird VPN (no public-facing ports).
- Complete log visibility across hybrid environments (on-prem + cloud).
- Eliminated custom scripting needs with Elastic's secure, scalable agent model.

### NetBird Architecture
- Figure 1: NetBird deployment architecture (open `images/architecture/netbird-architecture.drawio` in [diagrams.net](https://app.diagrams.net/)).

## 📊 Measured Performance Data

### Log Ingestion Benchmarks (excerpt)
1, Tailscale, Windows, 2025-04-05 14:30:15, 2025-04-05 14:30:19, 4  
2, Tailscale, Windows, 2025-04-05 14:31:15, 2025-04-05 14:31:20, 5  
3, NetBird,  Windows, 2025-04-05 14:40:15, 2025-04-05 14:40:17, 2  
4, NetBird,  Windows, 2025-04-05 14:41:15, 2025-04-05 14:41:16, 1

- 📄 Full benchmark data: `performance/log-ingestion-benchmarks.csv`

### System Performance
- 3.6M+ logs processed in 72 hours (Security Onion + Azure Sentinel).
- 0% data loss during tunnel failover tests.
- 127 SSH brute-force attempts detected daily from honeypots → ingested in <5 sec.

## 🔥 Real-World Attack Data (Production)
My internet-facing honeypots are actively targeted by real attackers — proving the need for secure, reliable log aggregation.

### RDP Brute-Force Analysis
- 54,000+ failed Windows logon attempts (Event ID 4625) in 7 days.
- Top attack sources (GeoIP analysis):
  - 43.156.12.199 (China) — 1,200+ attempts
  - 103.78.242.110 (Vietnam) — 980+ attempts
  - 192.185.218.167 (USA) — 750+ attempts
  - 185.130.105.23 (Russia) — 620+ attempts

- Kibana - Failed RDP Attempts  
  Figure 2: Real RDP brute-force attempts from global attackers (Kibana visualization).  
  Image: `images/evidence/kibana-4625.png`

- 📥 Download raw attack data (CSV): `evidence/kibana-4625-attacks.csv`

### 💡 Key Insight
78% of attacks originate from known botnet IP ranges. The secure logging pipeline ensures none go unnoticed.

## 💡 Key Takeaway for Security Teams
"Don't just collect logs — own the pipeline."  
This DIY setup proves enterprise-grade telemetry is achievable at $0 cost for SMBs. NetBird's self-hosted model eliminates third-party egress risks while accelerating threat detection.

## 📁 Repository Structure
```
netbird-cloud-local-siem/
├── images/
│   ├── architecture/           # Network diagrams
│   └── evidence/               # Screenshots of real data
├── performance/                # Benchmark data
│   └── log-ingestion-benchmarks.csv
├── evidence/                   # Raw attack data
│   └── kibana-4625-attacks.csv
├── config/                     # Configuration examples
│   ├── netbird-management.json
│   └── wireguard-config.conf
└── README.md                   # This document
```

## 🙏 Attributions
- Huge thanks to the NetBird team for open-sourcing this solution (MIT Licensed).
- Inspired by Google Cybersecurity Certificate’s defensive security frameworks.

## 🔗 Connect with Me
- LinkedIn: https://www.linkedin.com/in/YOUR-HANDLE