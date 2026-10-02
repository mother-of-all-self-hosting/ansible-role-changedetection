<!--
SPDX-FileCopyrightText: 2023 Niels Bouma
SPDX-FileCopyrightText: 2026 Suguru Hirahara

SPDX-License-Identifier: Apache-2.0
-->

# Changedetection.io Ansible role

This is an [Ansible](https://www.ansible.com/) role which installs [Changedetection.io](https://github.com/dgtlmoon/changedetection.io), for website change detection, restock monitoring and notifications, to run as a [Docker](https://www.docker.com/) container wrapped in a systemd service.

This role *implicitly* depends on:

- [`com.devture.ansible.role.playbook_help`](https://github.com/devture/com.devture.ansible.role.playbook_help)
- [`com.devture.ansible.role.systemd_docker_base`](https://github.com/devture/com.devture.ansible.role.systemd_docker_base)

Check [`defaults/main.yml`](defaults/main.yml) for the full list of supported options. Refer to [this page](docs/configuring-changedetection.md) for details about setting up the service with this role.

💡 For an Ansible playbook which integrates this role and makes it easier to use, see the [Mother-of-All-Self-Hosting Ansible playbook](https://github.com/mother-of-all-self-hosting/mash-playbook).

## Development

### pre-commit

You can optionally install [pre-commit](https://pre-commit.com/) so that simple mistakes are checked and noticed before changes are pushed to a remote branch. See [`.pre-commit-config.yaml`](./.pre-commit-config.yaml) for which hooks are to be executed.

See [this section](https://pre-commit.com/#usage) on the official documentation for usage.

### Molecule

This role supports [Molecule](https://docs.ansible.com/projects/molecule/), an Ansible testing framework designed for developing and testing Ansible collections, playbooks, and roles.

Refer to [this page](./molecule/README.md) for details about how to utilize it.

### Releases

Tags are created on the GitHub workflow by [`.github/workflows/autotag.yml`](.github/workflows/autotag.yml), which asks [`bin/compute-next-tag.sh`](bin/compute-next-tag.sh) what the commit on `main` should be released as. The answer comes from the version pinned in [`defaults/main.yml`](defaults/main.yml) and from the tags that already exist, so a commit that only touches documentation or CI is not released at all, and any change to the role itself is — without waiting for a dependency bump to carry it along.

[`bin/test-compute-next-tag.sh`](bin/test-compute-next-tag.sh) exercises that script against throwaway repositories, and runs as a prek hook.
