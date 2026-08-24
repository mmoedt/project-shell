# project-shell

A bare scaffold showing what a minimal, well-formed open-source repository
looks like. The actual code is a placeholder — the point is the surrounding
structure.

## What's here

| Path | Why it exists |
|---|---|
| `LICENSE` | MIT. Without it, the default is "all rights reserved" — nobody may legally use your code. |
| `README.md` | The landing page. GitHub renders it on the repo home. |
| `CONTRIBUTING.md` | Linked automatically by GitHub in the PR and issue UI. |
| `CODE_OF_CONDUCT.md` | Expected by most communities; GitHub surfaces it in the repo sidebar. |
| `.gitignore` | Keeps build junk and secrets out of history. |
| `.editorconfig` | Cross-editor whitespace consistency. |
| `.github/workflows/ci.yml` | Runs the test suite on every push and PR. |
| `.github/ISSUE_TEMPLATE/` | Pre-fills the issue form so reports are useful. |
| `.github/pull_request_template.md` | Pre-fills the PR description. |
| `src/`, `tests/` | The code and its tests. |

## Usage

```bash
./src/hello.sh          # prints a greeting
./src/hello.sh World    # prints "Hello, World!"
```

## Development

```bash
./tests/test_hello.sh   # run the test suite
```

## License

MIT — see [LICENSE](LICENSE).
