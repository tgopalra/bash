###!/bin/bash
> t
KYCH="/root/.ssh/authorized_keys"
ADM="inadmn01lvp"
for i in `cat ipssh`
do
CMD=$(ssh -q -T -o LogLevel=Error -o StrictHostKeyChecking=no $i "
if  grep -o  "$ADM" $KYCH
then
        echo "Key Done"
        hostname
else
        hostname
        mkdir -p /root/.ssh/ && touch /root/.ssh/authorized_keys;echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCy5iZopi74SC2trLjX7DGRWoQ9oN2TikEN6JPrxsmjZNjZ7lNBi1YaczzvX18JGdf5LvzDp7sS8aPAHFZf39+OMRu7FqNrbAQoHkFXC0KnLPxCT22sNv8PBA3KuIFo7ZsYQWpdAo6XQ+F8RU3bfOdC09BugkZ/DYiDBGByRTUULGlQZAyvE3Zqh2EEZRXDRtu7oBciFzkPDoxFhnUucK/mEl9LPVIubguSbsy42oKoFireA5H36hJRQKBBXToIxO+qDfqmzfpDxON8Za5+PKTn4AyzRT6+E2PX1MpbksmTwoJz4MnpWN83bwFkTNdCyQTtlZx4kfO5cqymBwlK2Cj root@inadmn0lvp.noam.fadv.com">> /root/.ssh/authorized_keys
fi"

echo "$CMD" >>t
)
done

