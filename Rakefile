
require 'rake/clean'
require 'rake/gempackagetask'

require 'prj_cfg'
load 'tasks/csts.rake'
require 'gem_spec'


Dir.glob( 'tasks/*.rake').each do |fn|
    next if fn =~ /csts.rake/
    begin
        load fn
    rescue LoadError
        puts "task #{fn.split('/')[1] } unavailable"
    end
end

task :default  => [:test]

