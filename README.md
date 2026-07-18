# Dotfiles

My personal dotfiles for setting up and maintaining a Mac. It automates installing my preferred tools, apps, and macOS settings so a fresh machine is ready with minimal fuss.

## Fresh macOS setup

1. Update macOS to the latest version.
2. **Install the Xcode Command Line Tools first** — git comes from them, so without this step step 4 just triggers the installer instead of cloning:

   ```zsh
   xcode-select --install
   ```

   Wait for the dialog to finish (~2 GB), then confirm:

   ```zsh
   xcode-select -p   # → /Library/Developer/CommandLineTools
   git --version
   ```

3. Set up an SSH key — either via the [1Password SSH agent](https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent), or by generating one:

   ```zsh
   curl https://raw.githubusercontent.com/larenelg/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
   ```

   Check it works before continuing — this must print your username:

   ```zsh
   ssh -T git@github.com
   ```

4. Clone this repo to `~/.dotfiles`:

   ```zsh
   git clone git@github.com:larenelg/dotfiles.git ~/.dotfiles
   ```

5. Run the install:

   ```zsh
   cd ~/.dotfiles && ./fresh.sh
   ```

6. Restart to finalise.

`fresh.sh` is safe to re-run — Homebrew skips anything already installed, and the rest is idempotent.

## What's in here

- **`fresh.sh`** — the installer: Xcode CLT, Oh My Zsh, Homebrew, then everything below.
- **`Brewfile`** — CLI tools, apps, and Mac App Store installs (`brew bundle`).
- **`.zshrc`** — Oh My Zsh config and shell setup.
- **`aliases.zsh`** / **`path.zsh`** — custom aliases and `$PATH` (loaded via `$ZSH_CUSTOM`).
- **`.macos`** — macOS system defaults.
- **`clone.sh`** — clones my own repos into `~/dev`.
- **`ssh.sh`** — generates an SSH key (fallback when not using the 1Password agent).

To customise: adjust the `Brewfile` for the apps you want, tweak `.macos` to taste, and add aliases in `aliases.zsh`.

## Credits

Forked from and heavily based on [Dries Vints' dotfiles](https://github.com/driesvints/dotfiles), which itself draws on the work of [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) and [Zach Holman](https://github.com/holman/dotfiles). Shell theme is [minimal](https://github.com/subnixr/minimal) by subnixr.
