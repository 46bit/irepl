using terms from application "iChat"
  on message received theMessage from theBuddy for theChat
    set qHandle to quoted form of (id of theBuddy as text)
    set qMessage to quoted form of theMessage
    send (do shell script "echo " & qMessage & " | irepl-client " & quoted form of qHandle) to theBuddy
  end message received
end using terms from