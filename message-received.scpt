using terms from application "iChat"
	on message received theMessage from theBuddy for theChat
		set qMessage to quoted form of theMessage
		set qHandle to quoted form of (id of theBuddy as text)
		do shell script "echo " & qMessage & " | /usr/local/bin/irepl-recv " & qHandle
	end message received
end using terms from