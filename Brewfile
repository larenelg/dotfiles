# Binaries
brew 'awscli'       # AWS command-line interface
brew 'bash'         # Latest Bash (macOS ships an old one)
brew 'bat'          # `cat` with syntax highlighting + git integration
brew 'coreutils'    # GNU core utils (macOS versions are outdated)
brew 'ffmpeg'       # Audio/video converter + toolkit
brew 'gh'           # GitHub CLI
brew 'git'          # Latest git
brew 'grep'         # GNU grep (newer than macOS's)
brew 'httpie'       # Friendly curl replacement (CLI HTTP client) — https://httpie.io/
brew 'jq'           # Command-line JSON processor
brew 'mas'          # Mac App Store CLI (used by the `mas` lines below)
brew 'pkg-config'   # Helper for compiling from source

# Development
brew 'imagemagick'  # Image manipulation from the CLI
brew 'yarn'         # JS package manager

# Apps
cask '1password'          # Password manager
brew '1password-cli'      # 1Password CLI (`op`) — used by the SSH agent / scripts
cask 'antigravity-cli'    # Google's Antigravity agent CLI (Gemini) — https://antigravity.google/
#cask 'caffeine'           # Menu-bar toggle to keep the Mac awake — https://intelliscapesolutions.com/apps/caffeine
cask 'chatgpt'            # OpenAI ChatGPT desktop app
cask 'claude'             # Anthropic Claude desktop app
cask 'claude-code'        # Claude Code CLI (terminal AI coding agent)
#cask 'cleanshot'          # Screenshot/screen-recording tool [PAID] — https://getcleanshot.com/
cask 'codex'              # OpenAI Codex CLI (terminal coding agent) — https://github.com/openai/codex
cask 'codex-app'          # OpenAI Codex desktop app — https://openai.com/codex
cask 'copilot-cli'        # GitHub Copilot CLI — https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli
cask 'cursor'             # Cursor AI code editor
cask 'cursor-cli'         # Cursor's command-line agent
#cask 'cyberduck'          # FTP/SFTP/cloud-storage browser — https://cyberduck.io/
#cask 'discord'            # Voice/text chat
#cask 'docker'             # ⚠️ BROKEN: no longer a cask. Use cask 'docker-desktop' (GUI) or brew 'docker' (CLI only)
cask 'figma'              # Design tool
cask 'firefox'            # Web browser
#cask 'github'             # GitHub Desktop app
cask 'google-chrome'      # Web browser
#cask 'helo'               # Local email tester/debugger (Laravel-adjacent) — https://usehelo.com/
#cask 'httpie'             # ⚠️ BROKEN: desktop cask discontinued. You already have the CLI via brew 'httpie' above
cask 'imageoptim'         # Lossless image compression — https://imageoptim.com/mac
#cask 'loom'               # Screen + video recording — https://www.loom.com/
#cask 'pastebot'           # Clipboard manager by Tapbots [PAID] — https://tapbots.com/pastebot/
#cask 'reflex'             # ⚠️ BROKEN: no such cask. `reflex` is a file-watcher CLI — use brew 'reflex' if wanted
#cask 'screen-studio'      # High-quality screen recorder/editor [PAID] — https://screen.studio/
cask 'slack'              # Team chat
#cask 'tableplus'          # GUI for relational databases [PAID] — https://tableplus.com/
#cask 'telegram-desktop'   # Telegram messenger
cask 'the-unarchiver'     # Unpacks archive formats
#cask 'transmit'           # Panic's file-transfer app (S3/FTP/etc.) [PAID] — https://panic.com/transmit/
#cask 'tunnelbear'         # VPN client [SUBSCRIPTION] — https://www.tunnelbear.com/
#cask 'tuple'              # Remote pair-programming app [PAID] — https://tuple.app/
cask 'visual-studio-code' # Code editor
cask 'zoom'               # Video calls

# Mac App Store
mas 'Keynote', id: 409183694    # Apple presentations (free)
#mas 'MyWoosh', id: 1498889644   # Indoor cycling / virtual training — https://www.mywhoosh.com/
mas 'Numbers', id: 409203825    # Apple spreadsheets (free)
#mas 'Speedtest', id: 1153157709 # Ookla internet speed test (free)

# =============================================================================
# Imported from MacBook Air (2026-07-18) — review and prune for the mini.
# `vscode` entries need the `code` CLI; `npm` entries need npm, at bundle time.
# =============================================================================

# Python
brew 'pycparser'    # C parser in Python (dependency of cffi)
brew 'cffi'         # C foreign-function interface for Python
brew 'pyenv'        # Python version manager
brew 'python@3.11'  # Python 3.11

# PDF / OCR tooling
brew 'docutils'     # reStructuredText processing
brew 'pdftk-java'   # PDF toolkit — merge/split/rotate
brew 'poppler'      # PDF rendering lib (pdftotext, pdfimages)
brew 'ripgrep-all'  # `rga` — ripgrep across PDFs, zips, etc.
brew 'tesseract'    # OCR engine

# Terminal
cask 'wezterm'      # GPU-accelerated terminal emulator + multiplexer

# VS Code extensions
vscode 'anthropic.claude-code'                # Claude Code integration
vscode 'astro-build.astro-vscode'             # Astro framework support
vscode 'davidanson.vscode-markdownlint'       # Markdown linting
vscode 'dbaeumer.vscode-eslint'               # ESLint
vscode 'esbenp.prettier-vscode'               # Prettier formatter
vscode 'mechatroner.rainbow-csv'              # CSV column highlighting
vscode 'ms-azuretools.vscode-containers'      # Dev container tooling
vscode 'ms-azuretools.vscode-docker'          # Docker support
vscode 'ms-dotnettools.csdevkit'              # C# Dev Kit
vscode 'ms-dotnettools.csharp'                # C# language support
vscode 'ms-dotnettools.vscode-dotnet-runtime' # .NET runtime installer
vscode 'ms-python.debugpy'                    # Python debugger
vscode 'ms-python.python'                     # Python language support
vscode 'ms-python.vscode-pylance'             # Python IntelliSense (Pylance)
vscode 'ms-vscode-remote.remote-containers'   # Remote - Containers
vscode 'tomoki1207.pdf'                       # In-editor PDF viewer
vscode 'vue.volar'                            # Vue language support

# npm globals
npm '@tobilu/qmd'   # Local semantic search over notes (qmd)
npm 'corepack'      # Node package-manager manager (yarn/pnpm shims)

# =============================================================================
# Apps found installed on the MacBook Air (2026-07-18) — review and prune.
# =============================================================================

# Casks
cask 'obsidian'                  # Markdown knowledge base (the vault)
cask 'wispr-flow'                # Voice-to-text dictation with AI editing
cask 'iterm2'                    # Terminal emulator
cask 'rectangle'                 # Window snapping via keyboard/snap areas
#cask 'alfred'                    # App launcher + productivity
#cask 'notion'                    # Notes / docs / databases
cask 'dropbox'                   # Cloud storage client
cask 'postman'                   # API development / testing
cask 'vlc'                       # Media player
cask 'audacity'                  # Audio editor/recorder
cask 'bambu-studio'              # 3D-print slicer (Bambu Lab)
cask 'color-oracle'              # Colour-blindness simulator (a11y)
cask 'colour-contrast-analyser'  # Contrast checker (a11y)
cask 'microsoft-word'            # Word processor (Office)
#cask 'snagit'                    # Screen capture — ⚠️ installs LATEST (2026), not 2023; 2023 licence may not activate it

# Mac App Store
mas 'Amphetamine', id: 937984704 # Keep-awake utility (Caffeine alternative)
mas 'Todoist', id: 585829637     # Task manager
#mas 'Bear', id: 1091189122       # Markdown notes
#mas 'TaskForge', id: 6744716215  # TaskForge — Obsidian Tasks companion
#mas 'Stark', id: 6444031666      # a11y tooling — ⚠️ verify ID (this is "Stark for Safari")
