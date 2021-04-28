# Set up

```bash
# Install Ansible itself
# ... uh, TODO

# Add community packages for Homebrew
ansible-galaxy collection install community.general
```

# Run

```bash
ansible-playbook  playbook.yaml -i inventory/hosts
```
