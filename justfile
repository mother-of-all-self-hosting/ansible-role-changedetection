# SPDX-FileCopyrightText: 2023 Niels Bouma
#
# SPDX-License-Identifier: Apache-2.0

# show help by default
default:
    @{{ just_executable() }} --list --justfile {{ justfile() }}

lint:
    ansible-lint .
