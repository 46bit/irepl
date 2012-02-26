using terms from application "iChat"
	on message received theMessage from theBuddy for theChat
		send (do shell script "echo " & quoted form of theMessage & " | /Users/fortysix/.rvm/rubies/ruby-1.8.7-p352/bin/ruby") to theBuddy
	end message received
end using terms from