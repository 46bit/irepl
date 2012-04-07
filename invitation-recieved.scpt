using terms from application "iChat"
  on received text invitation theMessage from theBuddy for theChat
    accept theChat
    
    set theHandle to (id of theBuddy as text)
	set qMessage to quoted form of theMessage
	do shell script "echo " & qMessage & " | /usr/local/bin/irepl-recv " & quoted form of theHandle
  end received text invitation
end using terms from
