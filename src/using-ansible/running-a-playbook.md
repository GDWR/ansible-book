# Running a playbook

A playbook is a collection of plays, which are a collection of tasks. A task is a single action that you want to run on a host. As a user it might be that these playbooks are already defined for you and you just need to run them after you've [defined your inventory](./define-your-inventory.md).

A simple example of a playbook that downloads a randomly coloured image from my [colours service](https://github.com/gdwr/colours) could go as follows.

```yaml
# file: random-colour.yaml

- name: Download a random colour
  hosts: localhost # runs on the control system
  tasks:
    - name: Download a random colour
      # https://docs.ansible.com/ansible/latest/collections/ansible/builtin/uri_module.html
      ansible.builtin.uri:
        url: "https://colours.gdwr.me/random"
        dest: "/tmp/colour.jpg"
```

And then be ran using `ansible-playbook random-colour.yml`.
```ansi
$ ansible-playbook random-colour.yaml
PLAY [Download a random colour] ****************************************************

TASK [Gathering Facts] *************************************************************
ok: [localhost]

TASK [Download a random colour] ****************************************************
changed: [localhost]

PLAY RECAP *************************************************************************
localhost: ok=2  changed=1  unreachable=0  failed=0  skipped=0  rescued=0  ignored=0
```
