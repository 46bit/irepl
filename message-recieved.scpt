using terms from application "iChat"
	on message received theMessage from theBuddy for theChat
		send (do shell script "echo " & quoted form of theMessage & " | ruby") to theBuddy
	end message received
end using terms from