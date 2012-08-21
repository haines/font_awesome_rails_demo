if ENV["HEROKU"]
  require 'rubypython'
  RubyPython.start python_exe: "python2.6"
end
