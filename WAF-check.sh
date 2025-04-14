#!/data/data/com.termux/files/usr/bin/bash

clear


#color
y="\e[1;33m"
r="\e[1;31m"
b="\e[1;34m"
pink='\033[1;35m'
GREEN='\033[1;32m'


# Banner
echo -e "${r}"
echo "  ██████╗██╗   ██╗██████╗ ███████╗██████╗ "
echo " ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"
echo " ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"
echo " ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"
echo " ╚██████╗   ██║   ██████╔╝███████╗██║  ██║"
echo "  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo -e "${r}"
echo " ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ ███████╗"
echo " ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗██╔════╝"
echo " ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝███████╗"
echo " ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗╚════██║"
echo " ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║███████║"
echo " ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝"

echo -e "${y}"
echo " ██╗    ██╗ █████╗ ███████╗     ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗"
echo " ██║    ██║██╔══██╗██╔════╝    ██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝"
echo " ██║ █╗ ██║███████║█████╗█████╗██║     ███████║█████╗  ██║     █████╔╝ "
echo " ██║███╗██║██╔══██║██╔══╝╚════╝██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ "
echo " ╚███╔███╔╝██║  ██║██║         ╚██████╗██║  ██║███████╗╚██████╗██║  ██╗"
echo "  ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝          ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝"

echo -e "${GREEN}                                > DEVALOPER CYBER BLACK LION! <<${NC}"

termux-open-url https://chat.whatsapp.com/HlH3EfeFlar5Fy1YCieMKJ

#!/bin/bash

# Set password
PASSWORD="cyber2002"

# Ask for password
echo -n "Enter password: "
read -s user_input
echo ""

# Check password
if [ "$user_input" == "$PASSWORD" ]; then
    echo "Access granted."
    
    # Place your tool code here
    echo "Running your Termux tool..."
    
    # Example: echo "Hello from your tool!"
    
else
    echo "Access denied. Incorrect password."
    exit 1
fi

echo "Enter a website URL (e.g. https://example.com):"
read url

# Check if curl is installed
if ! command -v curl &> /dev/null; then
    echo "'curl' not found. Installing curl..."
    pkg install -y curl
fi

# Send a basic WAF detection request
echo "Sending test request to detect Web Application Firewall (WAF)..."
response=$(curl -s -o /dev/null -w "%{http_code}" -A "' OR '1'='1" "$url")

echo "HTTP response code: $response"

if [[ "$response" == "403" || "$response" == "406" || "$response" == "501" ]]; then
    echo "Possible WAF detected! (Blocked request with suspicious payload)"
else
    echo "No obvious WAF detected with basic test."
fi
