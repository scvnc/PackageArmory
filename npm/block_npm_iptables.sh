registry_addr=$(host -t a registry.npmjs.org|grep -e '\([0-9]\{1,3\}.\?\)\{4\}' -o)

# This will drop requests to the npm registry
iptables -A OUTPUT -d $registry_addr -j DROP
