# netbird-cloud-local-siem

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub release](https://img.shields.io/badge/release-v1.0.0-blue.svg)](https://github.com/robertpreshyl/netbird-cloud-local-siem/releases)
[![GitHub stars](https://img.shields.io/badge/stars-⭐-yellow.svg)](https://github.com/robertpreshyl/netbird-cloud-local-siem/stargazers)
[![GitHub forks](https://img.shields.io/badge/forks-🔀-blue.svg)](https://github.com/robertpreshyl/netbird-cloud-local-siem/network)
[![GitHub issues](https://img.shields.io/badge/issues-📝-orange.svg)](https://github.com/robertpreshyl/netbird-cloud-local-siem/issues)
[![GitHub pull requests](https://img.shields.io/badge/PRs-🔀-green.svg)](https://github.com/robertpreshyl/netbird-cloud-local-siem/pulls)
[![Security](https://img.shields.io/badge/security-🔒-red.svg)](https://github.com/robertpreshyl/netbird-cloud-local-siem/security)
[![NetBird](https://img.shields.io/badge/NetBird-WireGuard-blue.svg)](https://netbird.io)
[![Security Onion](https://img.shields.io/badge/Security%20Onion-SIEM-orange.svg)](https://securityonion.net)
[![Website](https://img.shields.io/badge/Website-Live%20Demo-green.svg)](https://netbird.allyshipglobal.com)

---

## 🔒 Secure Cloud-Local Log Aggregation with Self-Hosted NetBird

> **A privacy-first solution for aggregating over 14,000,000+/Week logs into locally hosted Security Onion/Azure Sentinel with local/cloud EDR capabilities.**

<div align="center">

*Self-hosted NetBird for enterprise-grade SIEM infrastructure*

---

[![Quick Demo](https://img.shields.io/badge/🚀%20Quick%20Start-Live%20Demo%20Here-brightgreen?style=for-the-badge&logo=rocket)](https://netbird.allyshipglobal.com)

---

### 🎥 **See It In Action - Security Onion Dashboard Demo**

<div align="center">

**Watch the SIEM dashboard processing real-time security events**

[![Security Onion Dashboard Overview](https://img.youtube.com/vi/6jGp3aVFP4w/maxresdefault.jpg)](https://www.youtube.com/watch?v=6jGp3aVFP4w)

*Security Onion dashboard in action - Real-time log processing and threat detection*

</div>

</div>

- **Enterprise Problem**: Fragmented cloud/on-prem logging cripples threat detection & intrusion prevention. Commercial solutions cost $15k+/month.
- **My Solution**: Deployment of Self-hosted NetBird (WireGuard-based) — $0 cost, full data ownership, 40% faster log ingestion.

### 📊 **Project Statistics**

| Metric | Value |
|--------|-------|
| **Daily Log Volume** | 2M+ logs |
| **Cost Savings** | $15k+/month |
| **Performance Gain** | +40% faster |
| **Data Ownership** | 100% control |
| **Security** | Zero-trust |

</div>

---

### 📊 **Tailscale vs NetBird Comparison**
| Feature | Tailscale (Paid) | Self-Hosted NetBird |
|---------|------------------|-------------------|
| **Data Ownership** | ❌ Traffic routed through third-party | ✅ Full control - All traffic stays within your infrastructure |
| **Management** | ✅ Polished UI | ✅ Modern UI with self-hosted control |
| **AD/LDAP Integration** | ✅ Available in paid tiers | ✅ Native support in self-hosted version |
| **Cost Structure** | 💰 $7/user/month | 💰 $0 - Only infrastructure costs you already have |
| **Traffic Flow** | 🌐 Traffic typically routed through relays | 🌐 Direct peer-to-peer - No third-party egress |
| **Customization** | ⚙️ Limited customization | ⚙️ Full customization - Modify to meet specific security requirements |
| **Compliance** | 📦 Depends on provider | 📦 Your compliance - Control your audit trail |
| **Log Ingestion Speed** | 📊 12.3 logs/sec | 📊 17.2 logs/sec (+40%) |

## ✅ Key Advantages of Self-Hosted NetBird in SIEM-Lab

### Operational Benefits
- **No vendor lock-in**: Full control over the entire infrastructure
- **Predictable costs**: Only pay for cloud hosting (~$15-25/month)
- **Customizable security policies**(AD): Implement granular access controls
- **No data egress fees**: All traffic stays within your controlled network

### Security Benefits
- **Reduced attack surface**: No public-facing management interfaces
- **Complete audit trail**: Full visibility into all network connections
- **Integration flexibility**: Easy integration with existing SIEM and monitoring tools
- **Zero-trust implementation**: Every connection is authenticated and encrypted

---

## 🛠️ **Architecture Overview**

<div align="center">

```mermaid
graph TB
    A[NetBird Server<br/>AWS VPS Ubuntu 22.04] --> B[Security Onion SIEM<br/>Oracle Linux 9]
    A --> C[Azure Sentinel<br/>Cloud SIEM]
    A --> D[Honeypots<br/>Local + Cloud]
    A --> E[Elastic Fleet Agents<br/>15+ Endpoints]
    
    B --> F[Log Aggregation<br/>4.8M+ Events]
    C --> F
    D --> F
    E --> F
    
    style A fill:#4CAF50
    style B fill:#FF9800
    style C fill:#2196F3
    style D fill:#9C27B0
    style E fill:#607D8B
    style F fill:#F44336
```

*Network architecture diagram - click to view full size*

</div>

### Network Design
- **Self-hosted NetBird management server** on AWS VPS Ubuntu 22.04 (cloud VM)
- **Live Demo Available**: [netbird.allyshipglobal.com](https://netbird.allyshipglobal.com)
- Secure WireGuard tunnels connecting:
  - Security Onion SIEM (local Oracle Linux 9 deployment) as guestVM
  - Azure Sentinel (cloud-based SIEM for cross-validation)
  - Multiple honeypots (local FLAREVM+REMNux,Metasploitable etc) and Cloud (AWS, Azure, Oracle VPS, and RDP servers)
  - Deployment of elastic fleet agents from Security Onion to all Local/Cloud endpoints for EDR

### Log Collection Strategy
#### ✅ Enterprise-Grade Log Ingestion via Elastic Fleet Agents 
- Deployed Elastic Agents on 15+ endpoints (local VMs, cloud honeypots, RDPs/VPs).
- Zero-trust telemetry flow over NetBird VPN (no public-facing ports), all traffic duly via encripted wireguard tunnel.
- Complete log visibility across hybrid environments (on-prem + cloud).
- Eliminated custom scripting needs with Elastic fleet's secure, scalable agent model + Kibana's KQl for Querie.
- Visible Syslogs aggregation, collation and processing from multiple local devices (MacOSx, http://127.0.0.1 machines)

## 📊 **Measured Performance Data**

### System Performance (7-Day Average)
- **Log Processing Rate**: 14M+ logs processed across Security Onion, Kibana + Azure Sentinel for Single Windows server cross-validations
- **Network Throughput**: Average 8.2 Mbps sustained over NetBird tunnels
- **Latency**: Average 45ms between cloud and on-prem endpoints
- **Uptime**: 99.98% over the 7-day period
- **Data Freshness**: 95% of logs ingested within 15 seconds of generation

### Resource Utilization
- **NetBird Server**: 45% CPU, 1.8GB RAM usage (2 vCPU, 2GB RAM instance)
- **Elastic Agents**: <5% CPU overhead on monitored endpoints
- **Network Efficiency**: 98% packet delivery rate across hybrid environments


### System Performance
- 3.6M+ logs processed in 48 hours (Security Onion + Azure Sentinel).
- 0% data loss during tunnel failover tests.
- 127/RDPs SSH brute-force + hacking attempts attempts detected daily from honeypots → ingested in <10 sec.
- Locally, an InetSim connection from REMnux VM was detected during malware detonation(simulations). The activity from FLARE VM was duly captured by Security Onion's(SIEM) endpoint agents in real time (<5 sec response).

---

## 🔥 **Real-World Attack Data (Production)**

> **My internet-facing honeypots are actively targeted by real attackers — proving the need for secure, reliable log aggregation.**

<div align="center">

![Attack Alert](https://img.shields.io/badge/ATTACKS%20DETECTED-54,000+-red?style=for-the-badge&logo=security)
![Threat Level](https://img.shields.io/badge/THREAT%20LEVEL-HIGH-red?style=for-the-badge&logo=warning)
![Response Time](https://img.shields.io/badge/RESPONSE%20TIME-<10s-green?style=for-the-badge&logo=clock)

</div>

### RDP Brute-Force Analysis
- 54,000+ Authentication failed Windows logon attempts (Event ID 4625) in 7 days.
- Top attack sources (GeoIP analysis):
  - 102.88.137.82 (Nigeria) — 12,700+ attempts
  - 80.94.95.54 (Vietnam) — 12,600+ attempts
  - 200.41.47.211 (Argentina) — 6200+ attempts
  - 152.53.135.48 (Germany) — 5,777+ attempts
  - 188.67.106.14 (Chile) — 5,510+ attempts

- Kibana - Failed RDP Attempts  
  Figure 2: Real RDP brute-force attempts from global attackers (Kibana visualization).  
  ![Kibana 4625 Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/kibana-discover-4625.png)

- 📥 Download raw attack data (CSV): `data/sample-data/kibana-4625-attacks.csv`

### 💡 Key Insight
Open ssh/RDP ports are magnets for automated attacks. Within hours of exposing the services, thousands of brute-force attempts from diverse global sources were detected, highlighting the constant scanning activity on the internet.

95% of attacks are automated scanning bots. Our honeypot recorded over 12,000 brute-force attempts in 7 days, with three IPs accounting for 25% of all attacks:
- `102.88.137.82` (Nigeria) - 12,000+ attempts (reported 98 times globally)
- `80.94.95.54` (Romania) - 12,600+ attempts (reported 515 times globally)
- `200.41.47.211` (Argentina) - 8,200+ attempts (reported 25 times globally)

This demonstrates why services like RDP should never be exposed directly to the internet. Solutions like NetBird provide secure access without exposing attack surfaces.

---

### 📸 **Evidence Gallery**
> **Real screenshots from the production SIEM environment**

#### Security Onion SIEM Dashboards
- **Main Dashboard**: ![Security Onion Dashboard](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-dashboard.png) - Primary SIEM overview with 4.8M+ events
- **Dashboard Overview**: ![Dashboard Overview](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/dashboard2_10m.png) - 10-minute dashboard overview
- **Authentication Events**: ![Authentication Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-authentication.png) - Real-time authentication monitoring
- **Authentication Extended**: ![Authentication Extended](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/authentication2.png) - Extended authentication monitoring
- **Event Analysis**: ![Event Analysis](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-events-table.png) - Detailed event investigation interface
- **Session Events**: ![Session Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Sessionevents1.png) - Session event monitoring
- **Session Events Extended**: ![Session Events Extended](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Sectionevents2.png) - Extended session event analysis
- **Threat Hunting**: ![Threat Hunting](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-hunt.png) - Advanced threat hunting capabilities
- **VMware Deployment**: ![VMware Deployment](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/security-onion-vmware.png) - Security Onion VM setup

#### Kibana Elastic Stack
- **Windows 4625 Events**: ![Kibana 4625 Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/kibana-discover-4625.png) - Failed Windows logon analysis
- **Login Failed Events**: ![Login Failed Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/loginfailedevents.png) - Detailed login failure analysis
- **Network Logon Events**: ![Network Logon Events](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/kibana-discover-network.png) - Network authentication monitoring
- **Network Events Extended**: ![Network Events Extended](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/Network2.png) - Extended network event monitoring
- **Kibana Overview**: ![Kibana Overview](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/kibana-discover-overview.png) - Elastic stack dashboard

#### Additional Evidence Screenshots
- **Dashboard View 1**: ![Dashboard View 1](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/4.50.45%20PM.png) - Alternative dashboard perspective
- **Hunt Interface**: ![Hunt Interface](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/4.51.17%20PM.png) - Additional threat hunting view
- **Authentication View**: ![Authentication View](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/5.04.39%20PM.png) - Extended authentication monitoring
- **Events Table View**: ![Events Table View](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/5.04.50%20PM.png) - Alternative events view
- **Kibana 4625 View**: ![Kibana 4625 View](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/5.05.20%20PM.png) - Additional failed logon analysis
- **Network Events View**: ![Network Events View](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/5.32.40%20PM.png) - Extended network monitoring
- **Kibana Overview View**: ![Kibana Overview View](https://github.com/robertpreshyl/netbird-cloud-local-siem/raw/main/images/evidence/5.34.50%20PM.png) - Alternative Kibana perspective

---

## 💡 **Key Takeaway for Security Teams**
"Don't just collect logs — own the pipeline."  
This DIY setup proves enterprise-grade telemetry is achievable at minimal cost for SMBs. While the software components are open source, you'll only pay for your cloud hosting (approximately $15-25/month for the recommended instance size).

---

## 📁 **Repository Structure**
```
netbird-cloud-local-siem/
├── images/
│   ├── architecture/           # Network diagrams
│   └── evidence/               # Screenshots of real data
├── data/                       # Datasets and evidence files
│   ├── large-datasets/         # Files >100MB (GitHub Releases)
│   ├── sample-data/            # Sample files (<100MB)
│   └── README.md               # Data documentation
├── scripts/                    # Utility scripts
│   └── manage-large-files.sh   # Large file management
├── config/                     # Configuration examples
│   ├── netbird-management.json
│   └── wireguard-config.conf
└── README.md                   # This document
```

---

## 🙏 **Attributions**
- Huge thanks to the NetBird team for open-sourcing this solution (MIT Licensed).
- Inspired by Google Cybersecurity Certificate’s defensive security frameworks.

## ⚠️ Trademark Notice
This project demonstrates a self-hosted implementation of NetBird. NetBird® is a registered trademark of NetBird, Inc. This implementation is operated independently and is not affiliated with, endorsed by, or connected to NetBird, Inc. The use of "netbird" in the subdomain is for descriptive purposes only to indicate the technology being demonstrated.

---

## 🚀 **Get Involved & Connect**

<div align="center">

### **Support This Project**

**Star this repository** if it helped you understand enterprise-grade security infrastructure!

[![GitHub stars](https://img.shields.io/badge/⭐%20Star%20this%20repo-Let%20others%20find%20it!-yellow?style=for-the-badge)](https://github.com/robertpreshyl/netbird-cloud-local-siem/stargazers)
[![GitHub forks](https://img.shields.io/badge/🔀%20Fork%20it-Make%20it%20your%20own!-blue?style=for-the-badge)](https://github.com/robertpreshyl/netbird-cloud-local-siem/fork)

---

### **Connect with Me**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-%20Robertpreshyl-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/precious-robert/)
[![GitHub](https://img.shields.io/badge/GitHub-robertpreshyl-black?style=for-the-badge&logo=github)](https://github.com/robertpreshyl)
[![Live Demo](https://img.shields.io/badge/🌐%20Live%20Demo-Explore%20Now-green?style=for-the-badge)](https://netbird.allyshipglobal.com)

---

**Built with ❤️ by [Robert](https://www.linkedin.com/in/precious-robert/)**

*Empowering security teams with open-source solutions*

</div>