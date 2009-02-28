# -*- coding: utf-8 -*-

# PROJECT
PROJECT_NAME    = 'mmap'
PROJECT_SUMMARY = 'The Mmap class implement memory-mapped file objects'
PROJECT_HOMEPAGE= 'http://asynk.ch'
UNIX_NAME       = File.basename( Dir.pwd ).downcase

# PERSONAL
USER_NAME       = 'Jérémy Zurcher' || ENV['USERNAME']
USER_EMAIL      = 'jeremy@asynk.ch' || ENV['EMAIL']
RUBYFORGE_USER  = ENV['RUBYFORGE_USER']

# VERSION
PROJECT_VERSION = '0.1'

# DIRECTORIES
BIN_DIR         = 'bin'
LIB_DIR         = 'lib'
EXT_DIR         = 'ext'
TEST_DIR        = 'test'
RDOC_DIR        = 'rdoc'
RCOV_DIR        = 'rcov'
RAKE_DIR        = 'tasks'

# FILES
README          = 'README'
CHANGES         = 'CHANGES'
LICENSE         = 'COPYING'
RAKEFILE        = 'Rakefile'
SETUP_FILE      = 'setup.rb'
PRJ_FILE        = 'prj_cfg.rb'
GEM_SPEC_FILE   = 'gem_spec.rb'
DATA_FILES      = FileList["benchmarks/**/*", "examples/**/*", "manual/**/*", "test/TestSuite/**/*" ]

