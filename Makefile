PROJECT := devuan-usb-prepare

play:
	ansible-playbook -i hosts.yml install.yml
