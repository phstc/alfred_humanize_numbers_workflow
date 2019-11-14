number = ARGV[0].to_i


result = nil
begin
	require 'humanize'
rescue LoadError
	result = "Run > gem install humanize"
rescue => e
	result = e.message
end


output = %{<?xml version="1.0"?><items>}

result ||= number.humanize

output += %{<item arg="#{number}"><title>#{result}</title></item>}

output += '</items>'

puts output
