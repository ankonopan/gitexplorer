require 'octokit'
lib = File.dirname(__FILE__)
Dir.glob(File.join(lib, 'types' ,'**', '*.rb'), &method(:require))
Dir.glob(File.join(lib, 'git_explorer' ,'**', '*.rb'), &method(:require))

module GitExplorer
end
