# serberus
A dead simple script to reduce the risk of accidentally deleting important directories. 

### Background ###
`unleash_serberus.sh` is designed to set a file within a specified path as immutable.
This assists in preventing the accidental deletion of the preceding directories.
I wish I could say I made this before I needed it, but unfortunately necessity is the mother of invention.

serberus' intended use case is to protect parent / top-level directories containing important files, such folder(s) on a HDD being used as a SMB share on Linux file ssytems.
It's designed to prevent you from deleting important parent directories by mistake, while still allowing you to freely modify child directories and their contents.

For example, if located at `/mnt/hdd/files/serberus.lock`, it will prevent you from accidentally deleting `/mnt/hdd/files/` (and completely nuking your entire HDD), but you are able to freely modify directories such `/mnt/hdd/files/media/` and beyond without hindrance. 

### Usage ### 
**`unleash_serberus.sh`**
1. Edit `unleash_serberus.sh` and insert your file paths.
2. Make `unleash_serberush.sh` executable, using `chmod +x unleash_serberus.sh`
3. Run `./unleash_serberush.sh`. It may require your password as `chattr` runs as `sudo`.

That's it! You are now mildly protected from careless mistakes when home-labbing while sleep deprived or intoxicated. 

**`recall_serberus.sh`**

Repeat steps 1-3 for `unleash_serberus.sh` to remove `serberus.lock` from the specified file paths.

### Useless ###
The name is inspired by 'Cerberus', the [*"multi-headed dog that guards the gates of the Underworld to prevent the dead from leaving"*](https://en.wikipedia.org/wiki/Cerberus).

It's also a play on words of 'server' and [the letter](https://knowyourmeme.com/memes/b-button-emoji) 🅱️.


### Limitations ###
Unfortunately serberus is not compatible with NTFS file systems.

### Disclaimer ###
serberus comes with absolutely no guarantees or assurances. I put it together in a couple hours with limited, minor testing and cannot ensure it's effectiveness.
I intentionally made it as simple as possible. Do not rely on it beyond your own understanding of it.
Always ensure you have backups of important files.

I invite and encourage any suggestions or improvements.
