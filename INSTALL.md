# Installing iREPL

You'll need to install [MacRuby](http://www.macruby.org) in order for ./bin/irepl-recv to run. Next up, symlink the contents of ./bin to /usr/local/bin. Then start ./bin/irepld running.

Next up, dive into Messages Beta for Mac and go to Preferences > Events. For the Messages Recieved event, set the AppleScript to message-recieved.scpt. Now do the same for Text Invitation and invitation-recieved.scpt. This second script handles messages from iMessage users that you've not chatted to before.

It should now work fine - if not then file a Bug or [send us an email](mailto:hello@irepl.im) and we'll take a look.