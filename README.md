# My config files

### Setup

(The order is not always strict.)

 * Install `git`
     * Run `ssh-keygen`
     * Add `~/.ssh/id_rsa.pub` to [GitHub](https://github.com/), etc.
 * In home directory, `git clone git@github.com:ajschumacher/.emacs.d.git`
 * Run the `link.sh` script as needed to connect things.
 * Install `emacs` 24:
     * On Ubuntu etc.: `apt-get install emacs24`
     * On a Mac this is often okay; see also
       [Clojure's fine directions][]
         * `brew install emacs --HEAD --use-git-head --cocoa --with-gnutls`
           *DO IT*
         * `brew install emacs --cocoa --srgb`
         * `brew linkapps Emacs`
     * On a Mac this is (kind of) the bee's knees: [emacs-mac-port][]
         * `brew tap railwaycat/emacsmacport`
         * `brew install emacs-mac`
         * `brew linkapps Emacs`
         * You get nice things like more utf-8 characters actually
           displaying, etc.
 * Install [cask][] for `emacs` dependencies (use python installer with `curl -fsSkL https://raw.github.com/cask/cask/master/go | python` if it hasn't changed)
 * Install `emacs` package dependencies with `cask install` from `~/.emacs.d`
 * To get TAGS set up for Emacs Lisp sources:
     * `cd /usr/local/share/emacs/25.0.50/lisp/` or whatever
     * `gunzip *.gz`
     * `etags *.el`
     * Now `M-.` should work. See also: [docs 1](http://www.gnu.org/software/emacs/manual/html_mono/eintr.html#Finding-More), [docs 2](http://www.gnu.org/software/emacs/manual/html_mono/eintr.html#etags)
 * Install `aspell` to have spell checking in emacs (and everywhere)
 * `python` and `R` kind of go without saying...
     * make sure there's `pip` (`python-pip`)
         * and `pip install virtualenv pew` etc.
     * `r-base` on Ubuntu
 * `pip install elpy jedi` for all the emacs-python love from elpy
   (`rope` can be used in place of `jedi`)
 * `gem install rubocop ruby-lint pry pry-doc method_source` to get nice things for Ruby
 * possibly install `gnutls` (`brew install gnutls` on mac)
 * `brew install leiningen` works fine.

[Clojure's fine directions]: http://clojure-doc.org/articles/tutorials/emacs.html
[emacs-mac-port]: https://github.com/railwaycat/emacs-mac-port
[cask]: https://github.com/cask/cask


### Other things

 * Recall that custom local short names for IP addresses are configured in `/etc/hosts`.


### Other Mac tweaks

 * `System Preferences...`, `Keyboard`, `Modifier Keys...`, `Caps Lock to
   Control`
 * Use [Karabiner](https://pqrs.org/osx/karabiner/) to `Change return key`, `Return to Control_L`. (Thanks [Howard](https://www.youtube.com/watch?v=B6jfrrwR10k).)
 * The nice default-provided font in Terminal is called "Menlo".
 * To turn off window drop shadows when doing screenshots, run:
   `defaults write com.apple.screencapture disable-shadow -bool true;
   killall SystemUIServer` ([ref1][]).
 * To make all files visible in the Finder, run: `defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder` ([ref2][])

[ref1]: http://computers.tutsplus.com/tutorials/how-to-become-an-os-x-screenshot-wizard--mac-50467
[ref2]: https://discussions.apple.com/thread/1935221


### Browser stuff

 * For Chrome, install:
     * [AdBlock](https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom)
     * [Markdown Here](http://markdown-here.com/)
     * [Markdown Preview Plus](https://chrome.google.com/webstore/detail/markdown-preview-plus/febilkbfcbhebfnokafefeacimjdckgl)
     * [JSONView](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc)
     * [Tampermonkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo)
     * [downloadyoutube](https://github.com/gantt/downloadyoutube)
     * [Hangouts](https://chrome.google.com/webstore/detail/hangouts/nckgahadagoaajjgafhacjanaoiihapd), I guess?


### Other things:

 * It seems like [vcsh][] might be the eventual awesome way to do
   configs. With [myrepos][] probably. See: [Manage Your Configs
   with vcsh][]
 * There's a bunch more at [dotfiles.github.io][].


[vcsh]: https://github.com/RichiH/vcsh
[myrepos]: http://myrepos.branchable.com/
[Manage Your Configs with vcsh]: http://www.linuxjournal.com/content/manage-your-configs-vcsh
[dotfiles.github.io]: http://dotfiles.github.io/
