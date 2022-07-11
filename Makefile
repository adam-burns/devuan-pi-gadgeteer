PROJECT := devuan-usb-prepare

play:
	export ANSIBLE_HOST_KEY_CHECKING=False
	export ansible_hosts=devuanpi
	ansible-playbook -i hosts.yml install.yml

local:
	export ANSIBLE_HOST_KEY_CHECKING=False
	export ansible_hosts=localhost
	ansible-playbook -i local.yml install.yml

scan:
	export ANSIBLE_HOST_KEY_CHECKING=False
	export ansible_hosts=devuanpi
	ansible-playbook -i hosts.yml discover_system_state.yml

