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

.. note:: The hhvm server/daemon executes **.hh** and **.php** files. **.hh** files must begin with **<?hh**, and **.hhconfig** must exist in the .hh file subdir

Starting HHVM 
-------------

Proxygen Server
~~~~~~~~~~~~~~~

This is the built-in hhvm server. It will execute under the user who launched it. It is started::

    hhvm -m server -p 8080

The mode **server** implies proxygen server and the prt it listens on is 8080. **-p 8080** is really equivalent to specifying **-d hhvm.server.port=8080**::

    hhvm -m server -d hhvm.server.port=8080

The **-m** parameter is required. The default source root, where the .php and .hh files reside, is by default the same subdirectory from which hhvm was started. To change it, do::

    hhvm -m server -p 8080 -d hhvm.server.source_root=/var/www/test

The port can also be changed using this -d parameter::

    hhvm -m server -d hhvm.server.port=8080 -d hhvm.server.source_root=/var/www/test

Daemon
~~~~~~


Administrative Server
~~~~~~~~~~~~~~~~~~~~~

This is not a separate mode like proxygen, daemon, or command line execution, rather it adds the ability to control the server, when run as a daemon or proxygen server.
You do this using curl.

.. todo:: flesh out later
