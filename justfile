# SPDX-FileCopyrightText: 2024 Shun Sakai
#
# SPDX-License-Identifier: CC0-1.0

alias all := default

# Run default recipe
default: build-book

# Run the linter for GitHub Actions workflow files
@lint-github-actions:
    actionlint -verbose

# Build the book
@build-book:
    npx antora antora-playbook.yml
