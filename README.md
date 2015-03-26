# Package Armory

This is a work-in-progress project/notes to provide configurations for offline/local access to software packages (npm, PyPI, RubyGems, aptitude, pacman, et al.) and package documentation. 

The goal is to be able to run scripts in this repository to generate a package caching system and synchronize with documentation sources.  This would be ideal for disconnected development where one may not have a reliable connection in a coffee shop or on the road. 

Package Caching
===============

Here are some notes on providing some kind of mirror/cache for repositories. My goal is to require few extra applications to produce the desired result of having cached/stale access.  It would be nice to have squid/nginx work for everything.

## npm
npm has a built in package cache at ~/.npm which seems to help out downloading the package, but it does not work out so well when disconnected.

Solution: nginx cache/proxy everything, serve stale when down.  
    - The provided script installs an nginx site that proxies the registry  
    - Have npm use the proxy: ```npm set proxy http://localhost:80```

Solution: [Sinopia](https://github.com/rlidwka/sinopia)
	
  - I have been using this as my npm repo with much success
  - Can register private packages.
  - Sometimes I have to restart the server after my laptop goes to sleep

Problem: The phantomjs package downloads from http://cdn.bitbucket.org/ariya/phantomjs/downloads/


### Other resources
[GitHub Gist nginx cache](https://gist.github.com/dctrwatson/5785675)  
http://eng.yammer.com/a-private-npm-cache/

## PyPI

Solution: pip2pi

  - Creates a folder simulating the PyPI folder structure.
  - Install a package and it's dependencies to a folder.
  - No servers required because pip can point to a local folder to be treated as a package repository.

Solution: nginx cache  
  - To be researched, but seems very feasible since PyPI seems to be all URL based.

## RubyGems
To be researched..

## nginx Tricks
[Nice nginx cache tutorial](http://yeupou.wordpress.com/2013/11/30/caching-steam-depots-on-your-local-server-with-nginx-and-dsniff/) which uses try_files over the caching mechansim.


Documentation Downloads
=======================

No build/sync script yet... some notes.  
[devdocs.io](https://github.com/Thibaut/devdocs) looks great!

## JQuery
http://www.jqapi.com/

## AngularJS
Download Angular Artifact-- it's in there
http://code.angularjs.org/1.2.14/

## Angular UI
...

## Bootstrap
Clone github repo
Build Jekyll somehow, they recommend just using Jekyll serve

## Assemble
clone
npm install
grunt
assemble https://github.com/assemble/assemble.io
docs in _gh_pages

## SQLAlchemy
PDF party  
https://media.readthedocs.org/pdf/sqlalchemy/rel_0_9/sqlalchemy.pdf

## Python
Easy download html version. docs.python.org. awesome.
http://docs.python.org/3/archives/python-3.4.0-docs-html.tar.bz2
http://docs.python.org/2/archives/

## LoDash
Markdown file in the doc folder-- includes some sort of php script that builds it.

## JavaScript
Mozilla Developer Network may be a good candidate

## ChaiJS
[Chai docs repo] (https://github.com/chaijs/chai-docs)
can build it with gnu make + node

## Node
You can download the entire file as one html file from the node site.
