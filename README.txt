== skelly

* http://illuminerdi.com
* http://www.adobe.com/coldfusion
* http://www.fusebox.org

== Description:

This ColdFusion application is a modification of the Fusebox 5.5.1 Implicit (no-XML) Skeleton application (core files and skeleton at http://fusebox.org/go/fusebox-downloads/core-files).

I needed some basic built-in functionality that Skeleton just didn't have that I didn't want to recreate every time.

== FEATURES/PROBLEMS:

Features:
* Global pre- and postfuseactions provided you extend app.cfc in your controllers.
* A session-based Rails 'flash' emulator. Not so great, but it works rather well.
* SES URLs - /index.cfm?fa=simple.main becomes /index.cfm/fa/simple.main

Problems:
* TODO: build in my custom config suite that sets up all datasources, mappings, webservices.
* TODO: build in Reactor support.

== REQUIREMENTS:

* ColdFusion MX 7+
* Fusebox 5.5.1

== INSTALL:

Install Fusebox 5.5.1 somewhere.

Clone this repo into your webroot.

If you're running in a subfolder, edit Application.cfc so that the following code points to the relative location of your application:
myFusebox.getApplicationData().appPath = "/"

Set up a mapping in CF Administrator that points logic path /fusebox5 to your local copy of Fusebox 5.5.1.

Test out the following URLs:
http://yourhost/index.cfm/fa/simple.main
http://yourhost/index.cfm/fa/simple.secondary

Let me know if you have any errors.

== LICENSE:

(The MIT License)

Copyright (c) 2009 Joshua Clingenpeel

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
