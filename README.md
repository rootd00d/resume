resume
======

An HTML resume generator using XSLT, jQuery, nanoScroller, JavaScript

This is not an attempt to make a general XSLT for any resume; just mine.

If you have a problem sending stale resumes where you typed "f$ck th15 5h1t" and saved it by accident, this may help.

# Problem
## Maintaining multiple different document formats of a single resume is problematic
* inconsistency
* duplication of effort
* versioning nightmares

# Solution
1. Create a "master" XML document that contains the "one resume to rule them all."
2. Create various XSLT documents that transform the XML into appropriate target formats
  
# Goals
## Produce XSL transforms that produce
* a modern-looking website
* a formatted text document
* a PDF

# TODO
* Import dependencies as GIT submodules, instead of replicating them here. Maybe.


http://caseyb.info
http://www.rootd00d.com
