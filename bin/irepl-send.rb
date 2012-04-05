
framework 'ScriptingBridge'

File.open('/Users/david/buddyid', 'w') {|f| f.puts ARGV[0]}

msgapp = SBApplication.applicationWithBundleIdentifier('com.apple.iChat')
buddy = nil
buddies = msgapp.buddies
buddies.each do |b|
  if b.id == ARGV[0]
    buddy = b
    break
  end
end
(`say "no buddy"` and exit) if buddy.nil?

msg = STDIN.read
msgapp.send msg, :to => buddy

