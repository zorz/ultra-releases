# Ultra

A terminal-native code editor with Sublime Text ergonomics, VS Code configuration compatibility, and integrated AI capabilities. Built with Bun for maximum performance.

![Ultra Editor](https://raw.githubusercontent.com/zorz/ultra/main/screenshots/ultra-main-ux.png)

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/zorz/ultra-releases/main/install.sh | bash
```

Or download manually from the [Releases](https://github.com/zorz/ultra-releases/releases) page.

### Manual Download

| Platform | Architecture | File |
|----------|--------------|------|
| macOS | Apple Silicon (M1/M2/M3) | `ultra-darwin-arm64.tar.gz` |
| macOS | Intel | `ultra-darwin-x64.tar.gz` |
| Linux | x86_64 | `ultra-linux-x64.tar.gz` |
| Linux | ARM64 | `ultra-linux-arm64.tar.gz` |

---

## Features at a Glance

| Feature | Access | Description |
|---------|--------|-------------|
| Quick Open | `Ctrl+P` | Fuzzy-find and open files |
| Command Palette | `Ctrl+Shift+P` | Search and run any command |
| Go to Symbol | `Ctrl+R` | Jump to symbol in current file |
| Workspace Symbols | `Ctrl+Shift+R` | Find symbol across all files |
| Go to Line | `Ctrl+G` | Jump to line number |
| Find | `Ctrl+F` | Search in current file |
| Find & Replace | `Ctrl+H` | Search and replace |
| Toggle Sidebar | `Ctrl+Shift+B` | Show/hide file tree |
| Toggle Terminal | `` Ctrl+` `` | Show/hide integrated terminal |
| Git Panel | `Ctrl+Shift+G` | Focus git staging panel |
| Split Editor | `Ctrl+\` | Split editor vertically |

---

## Editor Features

### Multi-Cursor Editing

Edit multiple locations simultaneously with full selection support.

| Shortcut | Action |
|----------|--------|
| `Ctrl+D` | Select word, then add cursor at next occurrence |
| `Ctrl+Shift+L` | Add cursor at all occurrences of selection |
| `Ctrl+Alt+Up` | Add cursor on line above |
| `Ctrl+Alt+Down` | Add cursor on line below |
| `Escape` | Clear secondary cursors |

### Code Folding

| Shortcut | Action |
|----------|--------|
| `Ctrl+Shift+[` | Fold current region |
| `Ctrl+Shift+]` | Unfold current region |
| `Ctrl+K Ctrl+0` | Fold all regions |
| `Ctrl+K Ctrl+J` | Unfold all regions |

### Comments

| Shortcut | Action |
|----------|--------|
| `Ctrl+/` | Toggle line comment |
| `Ctrl+K Ctrl+C` | Add line comment |
| `Ctrl+K Ctrl+U` | Remove line comment |

---

## Git Integration

### Git Panel (`Ctrl+Shift+G`)

Stage, unstage, and commit changes without leaving the editor.

| Key | Action |
|-----|--------|
| `s` | Stage file |
| `Shift+S` | Stage all files |
| `u` | Unstage file |
| `d` | Discard changes |
| `Enter` | Open diff viewer |
| `o` | Open file |
| `c` | Commit |
| `r` | Refresh status |

### Inline Diff

When viewing a modified file, inline diff markers appear in the gutter:
- **Green bar**: Added lines
- **Red bar**: Deleted lines
- **Yellow bar**: Modified lines

---

## AI Integration

Ultra integrates AI assistants directly into the editor.

![Ultra AI Chat](https://raw.githubusercontent.com/zorz/ultra/main/screenshots/ultra-ai-chat.png)

### Claude Code

Open Claude Code chat with `Ctrl+Shift+A` or via command palette.

- Context-aware code assistance
- Session persistence (conversations resume where you left off)
- Code suggestions and explanations

### Codex & Gemini

Alternative AI providers also supported.

---

## LSP (Language Server Protocol)

Ultra provides IDE features through LSP integration:

| Feature | Shortcut | Description |
|---------|----------|-------------|
| Autocomplete | `Ctrl+Space` | Trigger completion suggestions |
| Hover Info | `Ctrl+I` | Show type info and documentation |
| Signature Help | `Ctrl+Shift+Space` | Show function signature |
| Go to Definition | `Ctrl+Shift+K` | Jump to symbol definition |

LSP servers are auto-detected based on file type. Supported languages include TypeScript, JavaScript, Python, Go, Rust, and more.

---

## Integrated Terminal

Toggle the terminal panel with `` Ctrl+` ``.

| Shortcut | Action |
|----------|--------|
| `` Ctrl+` `` | Toggle terminal panel |
| `Ctrl+Shift+T` | New terminal in pane |

Features:
- Full PTY emulation with colors and cursor positioning
- Scrollback buffer
- Mouse support for text selection

---

## Configuration

Ultra stores configuration in `~/.ultra/`:

- **Settings**: `~/.ultra/settings.jsonc` (open with `Ctrl+,`)
- **Keybindings**: `~/.ultra/keybindings.jsonc` (open with `Ctrl+Shift+,`)
- **Sessions**: `~/.ultra/sessions/`

### Built-in Themes

- **Catppuccin Frappé** (default)
- **Catppuccin Mocha**
- **Catppuccin Macchiato**
- **Catppuccin Latte**
- **One Dark**

Change theme via command palette: "Preferences: Color Theme"

---

## Keyboard Shortcuts Reference

### File Operations
| Shortcut | Action |
|----------|--------|
| `Ctrl+S` | Save |
| `Ctrl+Shift+S` | Save As |
| `Ctrl+O` | Open file |
| `Ctrl+N` | New file |
| `Ctrl+W` | Close tab |
| `Ctrl+Q` | Quit |

### Editing
| Shortcut | Action |
|----------|--------|
| `Ctrl+Z` | Undo |
| `Ctrl+Shift+Z` | Redo |
| `Ctrl+C` | Copy |
| `Ctrl+X` | Cut |
| `Ctrl+V` | Paste |
| `Ctrl+A` | Select all |
| `Ctrl+D` | Select word / next occurrence |
| `Ctrl+/` | Toggle comment |

### Navigation
| Shortcut | Action |
|----------|--------|
| `Ctrl+P` | Quick open file |
| `Ctrl+Shift+P` | Command palette |
| `Ctrl+G` | Go to line |
| `Ctrl+R` | Go to symbol |
| `Ctrl+Shift+K` | Go to definition |

### View
| Shortcut | Action |
|----------|--------|
| `Ctrl+Shift+B` | Toggle sidebar |
| `` Ctrl+` `` | Toggle terminal |
| `Ctrl+Shift+G` | Focus git panel |
| `Ctrl+\` | Split vertically |

---

## Command Line Usage

```bash
# Open current directory
ultra .

# Open a file
ultra path/to/file.ts

# Open a directory
ultra ~/projects/my-app

# Open file at specific line
ultra file.ts:42

# Show version
ultra --version
```

---

## Requirements

- macOS or Linux
- A modern terminal with 256-color support (iTerm2, Kitty, Alacritty, etc.)

---

## License

Ultra is proprietary software. See [LICENSE](LICENSE) for terms.

**Free for personal use.** Commercial licensing and pricing may be introduced at any time without notice.

Copyright 2024-2026 Zorz LLC
