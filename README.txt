Things to do before running your app for the first time:

1. Open config/app.xml and make sure the settings are correct for your environment
2. Open config/database.xml and make sure your database connection data is set up
3. Open config/mapping.xml and give absolute system paths to the location of your FB551 and Reactor checkouts
4. Open config/reactor.xml and (unfortunately) enter in a bunch of data again. *TODO: dynamically generate the reactor.xml in the future!
5. Create a symlink to your CFIDE into your webroot if you're developing somewhere else than the JRun/CF webroot (and you should be!)

Navigate to #app_root#/config - you should be good to go!