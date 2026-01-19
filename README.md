# Ultra

A terminal-native code editor with Sublime Text ergonomics, VS Code configuration compatibility, and integrated AI capabilities.

![Ultra Editor](https://raw.githubusercontent.com/zorz/ultra/main/screenshots/ultra-main-ux.png)

## Download

Download the latest release for your platform from the [Releases](https://github.com/zorz/ultra-releases/releases) page.

| Platform | Architecture | File |
|----------|--------------|------|
| macOS | Apple Silicon (M1/M2/M3) | `ultra-darwin-arm64.tar.gz` |
| macOS | Intel | `ultra-darwin-x64.tar.gz` |
| Linux | x86_64 | `ultra-linux-x64.tar.gz` |
| Linux | ARM64 | `ultra-linux-arm64.tar.gz` |

## Installation

### Quick install scripts

**macOS (Apple Silicon):**
```bash
curl -L https://github.com/zorz/ultra-releases/releases/latest/download/ultra-darwin-arm64.tar.gz | tar -xz && sudo mv ultra-darwin-arm64 /usr/local/bin/ultra
```

**macOS (Intel):**
```bash
curl -L https://github.com/zorz/ultra-releases/releases/latest/download/ultra-darwin-x64.tar.gz | tar -xz && sudo mv ultra-darwin-x64 /usr/local/bin/ultra
```

**Linux (x86_64):**
```bash
curl -L https://github.com/zorz/ultra-releases/releases/latest/download/ultra-linux-x64.tar.gz | tar -xz && sudo mv ultra-linux-x64 /usr/local/bin/ultra
```

**Linux (ARM64):**
```bash
curl -L https://github.com/zorz/ultra-releases/releases/latest/download/ultra-linux-arm64.tar.gz | tar -xz && sudo mv ultra-linux-arm64 /usr/local/bin/ultra
```

## Features

- **Terminal-native** - Runs entirely in your terminal, no GUI required
- **Fast** - Built with Bun for maximum performance
- **AI Integration** - Built-in Claude Code, Codex, and Gemini support
- **VS Code Compatible** - Uses familiar keybindings and settings format
- **Sublime Text Ergonomics** - Multiple cursors, command palette, goto anything
- **LSP Support** - Full language server protocol for code intelligence
- **Git Integration** - Built-in git panel with staging, commits, and diffs

## Usage

```bash
# Open current directory
ultra

# Open a file
ultra myfile.txt

# Open a directory
ultra ~/projects/myapp
```

## License

Ultra is proprietary software. See [LICENSE](LICENSE) for terms.

**Currently free** - Pricing may be introduced at any time without notice.
