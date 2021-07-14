HHVM Intro
==========

Building and Installing from Source
-----------------------------------

From `Installation: Building From Source <https://docs.hhvm.com/hhvm/installation/building-from-source>`_.

1. Enable **src** entry in /etc/apt/sources.list.d/blah-blah-hhvm.list

2. Use apt to install build dependencies for hhvm, clone the hhvm repository, build hhvm and install it::

    sudo apt update && apt-get build-dep hhvm-nightly 

    git clone git://github.com/facebook/hhvm.git

    cd hhvm

    git submodule update –init –recursive

    cmake -DMYSQL_UNIX_SOCK_ADDR=/var/run/mysqld/mysqld.sock .

    make -j 4 

    sudo make install

HHVM and its related binaries will be installed in **/usr/local/bin**.

Note: The hhvm server/daemon executes **.hh** and **.php** files. **.hh** files must begin with **<?hh**, and **.hhconfig** must exist in the .hh file subdir
 
::

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

See **hack-proj** bash script.

**vendor/bin/hh-autoload** should be run to update the
./vendor/autload.hack file that maps your classes, functions, etc, to
the **.hack** file in which they are reside.

RESUME
here:https://docs.hhvm.com/hack/getting-started/starting-a-real-project

TEST:

**-p 8080** is really equivalent to just **-d hhvm.server.port=8080**.
Since the **-m server** parametert must be specified, and its use
implies the server type is proxygen and the default source_root is
**./**, explicitly specifying **d hhvm.server.type=proxygen -d
hhvm.server.source_root=./** is redundant and therefore confusing to a
new user.
