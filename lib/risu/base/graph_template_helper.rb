# Copyright (c) 2012-2014 Arxopia LLC.
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

module Risu
	module Templates
		module GraphTemplateHelper
			
			#
			def other_os_graph_page
				if Host.other_os_graph_has_data?
					new_page
					@output.image Host.other_os_graph, :width => 500, :height => 375, :position => :center
					text Host.other_os_graph_text
				end				
			end

			#
			def windows_os_graph_page
				if Host.windows_os_graph_has_data?
					new_page
					@output.image Host.windows_os_graph, :width => 500, :height => 375, :position => :center
					text Host.windows_os_graph_text
				end
			end

			#
			def root_cause_graph_page
				new_page
				@output.image Plugin.root_cause_graph, :width => 500, :height => 375, :position => :center
				text Plugin.root_cause_graph_text
			end

			#
			def risks_by_service_graph_page
				new_page
				@output.image Item.risks_by_service_graph(10), :width => 500, :height => 375, :position => :center
				text Item.risks_by_service_graph_text
			end

			#
			def risks_by_severity_graph_page
				new_page
				@output.image Item.risks_by_severity_graph, :width => 500, :height => 375, :position => :center
				text Item.risks_by_severity_graph_text, :inline_format => true
			end				
		end
	end
end