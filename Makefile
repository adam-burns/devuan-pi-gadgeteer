PROJECT := devuan-pi-gadgeteer

play:
	ansible-playbook -i hosts.yml install.yml

local:
	ansible-playbook -i local.yml install.yml

scan:
	ansible-playbook -i hosts.yml discover_system_state.yml

web:
	ansible-playbook -i hosts.yml web.yml

test:
	ansible-playbook -i hosts.yml main.yml
