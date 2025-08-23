#!/bin/bash

# Create a temporary file
temp_file=$(mktemp)

# Read the README and replace the video section
awk '
/### 🎥 \*\*Quick Overview Video\*\*/ {
    print "### 🎥 **See It In Action - Security Onion Dashboard Demo**"
    print ""
    print "<div align=\"center\">"
    print ""
    print "**Watch the SIEM dashboard processing real-time security events**"
    print ""
    print "[![Security Onion Dashboard Overview](https://img.shields.io/badge/🎥%20Watch%20on%20YouTube-1%20Minute%20Overview-red?style=for-the-badge&logo=youtube)](https://www.youtube.com/watch?v=6jGp3aVFP4w)"
    print ""
    print "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6jGp3aVFP4w?si=68QfaNggrOfVbNOa\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>"
    print ""
    print "*Security Onion dashboard in action - Real-time log processing and threat detection*"
    print ""
    print "</div>"
    # Skip the old video section
    while (getline && !/<\/div>/) {
        continue
    }
    next
}
{ print }
' README.md > "$temp_file"

# Replace the original file
mv "$temp_file" README.md
