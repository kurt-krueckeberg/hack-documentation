Installing the vim-hack plugin for Vim
--------------------------------------

First, to enable vim8-plugin support in vim (as described in the youtube video `How to install ANY Vim plugin with Vim 8+ Packages <https://www.youtube.com/watch?v=XIxsD7l4zww&t=108s>`_) add 'packloadall' to ~/.vimrc. Next, create this subdirectory structure:

    ~$ mkdir -p .vim/pack/plugins/start

Then to use a vim8-compatible plugin, clone it into the **start** subdirectory about

    ~$ git clone https://github.com/hhvm/vim-hack.git ~/.vim/pack/plugins/start/vim-hack
    ~$ git clone https://github.com/w0rp/ale.git     ~/.vim/pack/plugins/start/ale

.. note:: You can tell that vim-hack works by adding hack code to .hack file. The Syntax -> File Types still won't display "Hack" under H. 

Creating a Hack Project
-----------------------

Make sure `composer <https://getcomposer.org/doc/00-intro.md#downloading-the-composer-executable>`_ is installed.

See `Getting Started: Starting A Real Project <https://docs.hhvm.com/hack/getting-started/starting-a-real-project>`_. I created **hack_proj**, a bash script that performs
the steps discussed in this link:

::

   curl https://raw.githubusercontent.com/hhvm/hhast/master/.hhconfig > .hhconfig

   mkdir bin src tests

   cat > hh_autoload.json
   {
     "roots": [
       "src/"
     ],
     "devRoots": [
       "tests/"
     ],
     "devFailureHandler": "Facebook\\AutoloadMap\\HHClientFallbackHandler"
   }

   composer require hhvm/hsl hhvm/hhvm-autoload
   composer require --dev hhvm/hhast hhvm/hacktest facebook/fbexpect

   cat > hhast-lint.json
   {
     "roots": [ "bin/", "src/", "tests/" ],
     "builtinLinters": "all"
   }

**vendor/bin/hh-autoload** should be run to update the ./vendor/autoload.hack file which maps your classes, functions, etc, to the correct **.hack** file.
