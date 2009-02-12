[as_time_goes_by][timegoesby]
=============================

This is an example [sinatra][sinatrarb] app integrating with webrat.  It's 
a good starting point for creating a [sinatra][sinatrarb]/[rspec][rspec]/[datamapper][datamapper]/[webrat][webrat] app.

Installation
============
    % gem sources
    *** CURRENT SOURCES ***

    http://gems.rubyforge.org
    % sudo gem sources -a http://gems.github.com
    http://gems.github.com added to sources
    % sudo gem install sinatra atmos-webrat json selenium-client do_sqlite3 dm-core

Testing
=======

There are only [acceptance tests][webrat] here, but they're kinda cool.  
You can easily run both console and selenium driven tests from the same spec.
There's also rcov coverage.

To just run the console based webrat tests run the following:

    % rake

To run the selenium tests run the following:
    % SELENIUM=true rake

Running
=======
    % rackup config.ru
    % open http://localhost:9292

[sinatrarb]: http://sinatrarb.com
[rspec]: http://rspec.info
[datamapper]: http://datamapper.org
[timegoesby]: http://www.youtube.com/watch?v=eIiAdHGi3AI
[webrat]: http://github.com/brynary/webrat
