pb-init:
	ansible-playbook -i infra/inventory.yaml infra/playbooks/init.yaml -K

pb-dpl-traefik:
	ansible-playbook -i infra/inventory.yaml infra/playbooks/traefik.yaml

pb-dpl-media-server: pb-dpl-traefik
	ansible-playbook -i infra/inventory.yaml infra/playbooks/media-server.yaml -K

ping:
	ansible general -m ping -i infra/inventory.yaml
