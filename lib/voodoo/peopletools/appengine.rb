
module Voodoo

  class AppEngine < PeopleTools

    def initialize
      super
      @executable = File.join(@tools_bin, %w{psae.exe})
    end

    def run(target, appengine_name)
      append(:db_type => target.db_type)
      append(:env_name => target.name)
      append(:env_username => target.app_username)
      append(:env_password => target.app_password)
      append(:r => '1')
      append(:ae_name => appengine_name)
      call_executable
    end

  end
end