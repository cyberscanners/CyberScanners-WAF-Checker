# CyberScanners-WAF-Checker

# 𝐂𝐘𝐁𝐄𝐑 𝐒𝐂𝐀𝐍𝐍𝐄𝐑𝐒 𝐇𝐀𝐂𝐊𝐈𝐍𝐆 𝐓𝐄𝐑𝐌𝐔𝐗 𝐖𝐀𝐅-𝐂𝐇𝐄𝐂𝐊𝐄𝐑.ᴘᴄ ᴏʀ ᴍᴏʙɪʟᴇ

TERMUX INSTALL

$ pkg update && pkg upgrade

$ pkg install -y curl

$ pkg install git

$ git clone https://github.com/cyberscanners/CyberScanners-WAF-Checker.git

$ cd CyberScanners-WAF-Checker

$ bash WAF-check.sh

මේකෙන් වෙන්නේ මොකද්ද?

* Simple WAF එකක් detect කරයි.

* WAF එකක් තියෙන වෙබ්සයිට් එකකට suspicious request (SQL injection payload) එකක් යවනවා.

* Response code එක 403, 406, 501 වගේ dangerous codes දුන්නොත් – WAF active කියලා හඳුනාගන්න පුළුවන්.

මොකක්ද WAF?

* WAF (Web Application Firewall) කියන්නේ malicious traffic block කරන්න web server එකට දාන filter/firewall එකක්.

උදා: SQL injection, XSS attempts වගේ attacks block කරනවා.
