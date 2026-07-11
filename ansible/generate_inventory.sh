#!/bin/bash

IP=$(cd ../terraform && terraform output -raw public_ip)

cat > inventory <<EOF
[cassandra]
$IP ansible_user=ubuntu ansible_ssh_private_key_file=/var/lib/jenkins/.ssh/cassandra-key.pem
EOF

echo "Inventory generated successfully!"
