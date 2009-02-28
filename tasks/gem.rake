# GEM TASK
Rake::GemPackageTask.new(GEM_SPEC) { |pkg|
    pkg.need_zip        = true
    pkg.need_tar        = true
    puts "Signed with #{CERT_PRIVATE}" if HAVE_CERT
}

desc "if dir chmod #{D_CHMOD} if file chmod #{F_CHMOD}"
task :chmod =>RDOC_FILES do
    Dir.glob('**/*'){ |p|
        open(p){ |f| f.chmod(F_CHMOD) } if File.file? p
        open(p){ |f| f.chmod(D_CHMOD) } if File.directory? p
    }
end

task :release => [:clobber, :chmod] do
    puts "Preparing release of #{PROJECT_NAME} version #{PROJECT_VERSION}"
    Rake::Task[:test].invoke
#    Rake::Task[:rdoc].invoke
    Rake::Task[:package].invoke
end

