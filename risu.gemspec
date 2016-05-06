# Copyright (c) 2010-2016 Arxopia LLC.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of the Arxopia LLC nor the names of its contributors
#     	may be used to endorse or promote products derived from this software
#     	without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL ARXOPIA LLC BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
# OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
# OF THE POSSIBILITY OF SUCH DAMAGE.

base = __FILE__
$:.unshift(File.join(File.dirname(base), 'lib'))

require 'risu/version'

Gem::Specification.new do |s|
	s.name = Risu::APP_NAME
	s.version = Risu::VERSION
	s.homepage = Risu::HOME_PAGE
	s.author = "Jacob Hammack"
	s.email = Risu::EMAIL

	s.summary = Risu::APP_NAME
	s.description = "#{Risu::APP_NAME} is a Nessus .nessus XML parser and report generation tool"
	s.license = "BSD"

	s.files	= Dir['[A-Z]*'] + Dir['lib/**/*'] + ['risu.gemspec']
	s.bindir = "bin"
	s.executables = "#{Risu::APP_NAME}"
	s.require_paths = ["lib"]
	s.has_rdoc = 'yard'
	s.extra_rdoc_files = ["README.markdown", "LICENSE", "NEWS.markdown"]

	s.rubyforge_project	= "#{Risu::APP_NAME}"

	s.add_runtime_dependency 'rails', '~> 4.2', '>= 4.2.6'
	s.add_runtime_dependency 'libxml-ruby', '~> 2.8', '>= 2.8.0'
	s.add_runtime_dependency 'prawn', '~> 2.0', '>= 2.1.0'
	s.add_runtime_dependency 'prawn-table', '~> 0.2', '>= 0.2.2'
	s.add_runtime_dependency 'gruff', '~> 0.6', '>= 0.6.0'
	s.add_runtime_dependency 'mysql2', '~> 0.4', '>= 0.4.4'
	s.add_runtime_dependency 'rmagick', '~> 2.15', '>= 2.15.4'
	s.add_runtime_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
	s.add_runtime_dependency 'nokogiri', '~> 1.6', '>= 1.6.7.2'

	s.add_development_dependency 'simplecov', '~> 0.11', '>= 0.11.1'
	s.add_development_dependency 'yard', '~> 0.8', '>= 0.8.0'
	s.add_development_dependency 'minitest', '~> 5.0', '>= 5.8.3'
	s.add_development_dependency 'test-unit', '~> 3.1', ">= 3.1.5"
end
