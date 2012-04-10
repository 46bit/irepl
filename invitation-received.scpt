using terms from application "iChat"
  on received text invitation theMessage from theBuddy for theChat
    accept theChat
    
	  set qMessage to quoted form of theMessage
	  set qHandle to quoted form of (id of theBuddy as text)
  	do shell script "echo " & qMessage & " | /usr/local/bin/irepl-recv " & qHandle
  end received text invitation
end using terms from
