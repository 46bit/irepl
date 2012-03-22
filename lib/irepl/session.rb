
class REPL
  class Session
    attr_accessor :env, :utime
    
    def initialize who
      @who = who
      @env = Heist::Runtime.new(:continuations => true)
      @utime = Time.now
    end
    
    def eval exp
      @utime = Time.now
      Heist.stringify @env.eval(Heist.parse(exp))
    end
  end
end
