#!/usr/bin/env bash
#
# hello.sh - print a greeting.
#
# Usage: hello.sh [NAME]
#
# Placeholder implementation for the project-shell scaffold.

set -euo pipefail

readonly DEFAULT_NAME="world"

usage() {
    cat <<'USAGE'
Usage: hello.sh [NAME]

Print a greeting for NAME. Defaults to "world".

Options:
  -h, --help    Show this help and exit.
USAGE
}

greet() {
    local NAME="${1}"
    printf 'Hello, %s!\n' "${NAME}"
}

main() {
    case "${1-}" in
        -h|--help)
            usage
            return 0
            ;;
    esac

    local NAME="${1:-${DEFAULT_NAME}}"
    greet "${NAME}"
}

main "${@}"
