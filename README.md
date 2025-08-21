# netbird-cloud-local-siem

## 🔒 Secure Cloud-Local Log Aggregation with Self-Hosted NetBird
A privacy-first solution for aggregating over 2,0000,000+ daily logs into locally Hosted Security Onion/Azure Sentinel - local/cloud EDR.

- **Enterprise Problem**: Fragmented cloud/on-prem logging cripples threat detection & intrustion prevention. Commercial solutions cost $15k+/month.
- **My Solution**: Self-hosted NetBird (WireGuard-based) — $0 cost, full data ownership, 40% faster log ingestion.

### 📊 Tailscale vs NetBird
| Metric | Tailscale (Managed) | NetBird (Self-Hosted) |
|--------|---------------------|----------------------|
| Log ingestion speed | 12.3 logs/sec | 17.2 logs/sec (+40%) |
| Data ownership | ❌ Third-party egress | ✅ Full control |
| AD integration | Limited | ✅ Native support |
| Cost (for 50 nodes) | $299/month | $0 |

## 🛠️ Architecture Overview

### Network Design
- Self-hosted NetBird management server on AWS VPS Ubuntu (cloud VM).
- Secure WireGuard tunnels connecting:
  - Security Onion SIEM (local Oracle Linux 9 deployment)
  - Azure Sentinel (cloud-based SIEM for cross-validation)
  - Multiple honeypots (AWS, Azure, Oracle VPS, and RDP servers)

### Log Collection Strategy
#### ✅ Enterprise-Grade Log Ingestion via Elastic Fleet Agents 
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
  ![Kibana 4625 Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/kibana-discover-4625.png)

- 📥 Download raw attack data (CSV): `evidence/kibana-4625-attacks.csv`

### 💡 Key Insight
78% of attacks originate from known botnet IP ranges. The secure logging pipeline ensures none go unnoticed.

### 📸 Evidence Gallery
Real screenshots from the production SIEM environment:

#### Security Onion SIEM Dashboards
- **Main Dashboard**: ![Security Onion Dashboard](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-dashboard.png) - Primary SIEM overview with 4.8M+ events
- **Authentication Events**: ![Authentication Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-authentication.png) - Real-time authentication monitoring
- **Event Analysis**: ![Event Analysis](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-events-table.png) - Detailed event investigation interface
- **Threat Hunting**: ![Threat Hunting](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-hunt.png) - Advanced threat hunting capabilities
- **VMware Deployment**: ![VMware Deployment](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-vmware.png) - Security Onion VM setup

#### Kibana Elastic Stack
- **Windows 4625 Events**: ![Kibana 4625 Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/kibana-discover-4625.png) - Failed Windows logon analysis
- **Network Logon Events**: ![Network Logon Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/kibana-discover-network.png) - Network authentication monitoring
- **Kibana Overview**: ![Kibana Overview](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/kibana-discover-overview.png) - Elastic stack dashboard

#### Additional Evidence Screenshots
- **Dashboard View 2**: ![Dashboard View 2](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Screenshot%202025-08-21%20at%204.50.45%20PM.png) - Alternative dashboard perspective
- **Hunt Interface 2**: ![Hunt Interface 2](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Screenshot%202025-08-21%20at%204.51.17%20PM.png) - Additional threat hunting view
- **Authentication 2**: ![Authentication 2](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Screenshot%202025-08-21%20at%205.04.39%20PM.png) - Extended authentication monitoring
- **Events Table 2**: ![Events Table 2](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Screenshot%202025-08-21%20at%205.04.50%20PM.png) - Alternative events view
- **Kibana 4625 2**: ![Kibana 4625 2](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Screenshot%202025-08-21%20at%205.05.20%20PM.png) - Additional failed logon analysis
- **Network Events 2**: ![Network Events 2](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Screenshot%202025-08-21%20at%205.32.40%20PM.png) - Extended network monitoring
- **Kibana Overview 2**: ![Kibana Overview 2](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Screenshot%202025-08-21%20at%205.34.50%20PM.png) - Alternative Kibana perspective

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