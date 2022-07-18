PROJECT := devuan-pi-gadgeteer

play:
	export ansible_hosts=devuanpi
	ansible-playbook -i hosts.yml install.yml

local:
	export ansible_hosts=localhost
	ansible-playbook -i local.yml install.yml

scan:
	export ansible_hosts=devuanpi.local
	ansible-playbook -i hosts.yml discover_system_state.yml

test:
	export ansible_hosts=devuanpi.local
	ansible-playbook -i hosts.yml main.yml
