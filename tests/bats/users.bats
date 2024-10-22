#!/usr/bin/env bats
# apparmor.d - Full set of apparmor profiles
# Copyright (C) 2024 Alexandre Pujol <alexandre@pujol.io>
# SPDX-License-Identifier: GPL-2.0-only

load common

setup_file() {
    aa_setup
}

# bats test_tags=users
@test "users: Print logged in usernames" {
    users
    aa_check
}

# bats test_tags=users
@test "users: Print logged in usernames according to a given file" {
    users /var/log/wmtp
    aa_check
}
