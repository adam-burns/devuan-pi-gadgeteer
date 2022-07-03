PROJECT := devuan-usb-prepare

play:
	ansible-playbook -i hosts.yml install.yml

local:
	ansible-playbook -i local.yml install.yml
