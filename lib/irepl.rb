
require 'heist'
require './lib/irepl/session'

class REPL
  def initialize
    @sessions = {}
    
    # ""garbage collector""
    Thread.new do
      loop do
        sleep 300
        @sessions.keys.each do |who|
          sess = @sessions[who] # i don't know if .delete works inside .each, and I can't be arsed finding out
          if (Time.now - sess.utime) >= 3600 # session not used for 1 hour
            @sessions.delete who
          end
        end
        
        GC.start # reclaim the memory
      end
    end
  end
  
  def eval_for who, exp
    user_session(who).eval exp
  end
  
  def user_session who
    @sessions[who] ||= Session.new(who)
  end
end
