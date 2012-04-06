
framework 'ScriptingBridge'

msgapp = SBApplication.applicationWithBundleIdentifier('com.apple.iChat')
buddy = nil
buddies = msgapp.buddies
buddies.each do |b|
  if b.id == ARGV[0]
    buddy = b
    break
  end
end
exit if buddy.nil?

msg = STDIN.read
msgapp.send msg, :to => buddy

