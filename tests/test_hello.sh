#!/usr/bin/env bash
#
# test_hello.sh - minimal test suite for src/hello.sh.

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly SCRIPT_DIR
HELLO="${SCRIPT_DIR}/../src/hello.sh"
readonly HELLO

PASS_COUNT=0
FAIL_COUNT=0

assert_equals() {
    local DESCRIPTION="${1}"
    local EXPECTED="${2}"
    local ACTUAL="${3}"

    if [[ "${EXPECTED}" == "${ACTUAL}" ]]; then
        PASS_COUNT=$((PASS_COUNT + 1))
        printf 'ok   - %s\n' "${DESCRIPTION}"
    else
        FAIL_COUNT=$((FAIL_COUNT + 1))
        printf 'FAIL - %s\n' "${DESCRIPTION}"
        printf '       expected: %q\n' "${EXPECTED}"
        printf '       actual:   %q\n' "${ACTUAL}"
    fi
}

main() {
    assert_equals "defaults to world" \
        "Hello, world!" \
        "$("${HELLO}")"

    assert_equals "uses the supplied name" \
        "Hello, Ada!" \
        "$("${HELLO}" Ada)"

    assert_equals "handles a name with spaces" \
        "Hello, Ada Lovelace!" \
        "$("${HELLO}" "Ada Lovelace")"

    assert_equals "--help mentions usage" \
        "Usage: hello.sh [NAME]" \
        "$("${HELLO}" --help | head -1)"

    printf '\n%d passed, %d failed\n' "${PASS_COUNT}" "${FAIL_COUNT}"
    [[ "${FAIL_COUNT}" -eq 0 ]]
}

main "${@}"
