# Config

Config is a basic checklist I follow to set up a new Mac's development environment. It's based on [Mark Otto's config](https://github.com/mdo/config). It's a WIP.

## Checklist

### 1. Prep OS X
  * Download and install latest version of Xcode from the Mac App Store
  * Download and install Xcode command line tools

### 2. Download dependancies
  * Install [Homebrew](http://brew.sh)
  * Install Node
    1. Install NVM `brew install nvm`.
    2. Install Node `nvm install v6`.

### 3. Secure Git(Hub) access

  * [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
  * [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled

### 4. Install Atom
 * [Download and install Atom](https://atom.io/)
 * Run the Atom > Install Shell Commands menu option 
 * Install [Sync Settings package](https://atom.io/packages/sync-settings) `apm install sync-settings`
 * Enter a Personal Access Token with the `gist` scope
 * Copy gist id from your [gists](https://gist.github.com/grahamharper/) to Sync Settings configuration
 * Run `sync-settings:restore` from the command palette

### 5. Map a key to #
Create a DefaultKeyBinding.dict file here:

```
~/Library/KeyBindings/DefaultKeyBinding.dict
```

Open it and add:
```
{
  /* Map # to § key*/
  "§" = ("insertText:", "#");
}
```
Save and restart your Mac.
