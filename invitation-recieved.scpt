using terms from application "iChat"
  on received text invitation theMessage from theBuddy for theChat
    accept theChat
    
    set qHandle to quoted form of (id of theBuddy as text)
    set qMessage to quoted form of theMessage
    send (do shell script "echo " & qMessage & " | irepl-client " & quoted form of qHandle) to theBuddy
  end received text invitation
end using terms from