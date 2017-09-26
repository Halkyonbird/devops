#!/usr/bin/env ruby
puts "argv[0] = #{ARGV[0]}"
err_cnt = 0
File.open(ARGV[0]).each do |line|
  filename, status, commit = line.chomp.split(':')
  #puts filename
  if File.exist?(filename)

    if /((\.(rb|rake))|(V|v)agrantfile|Rakefile)$/.match(filename)
      puts "Processing Ruby file: #{filename}..."
      `ruby -c #{filename}`
      stat = $?.exitstatus
      puts 'rubySyntaxCheckWasFuckedUp' if stat !=0

    elsif /\.java$/.match(filename)
      puts "Processing Java file: #{filename}..."
      # `javac #{filename}`
      `java -jar ~/lib/checkstyle-7.0-all.jar -t #{filename}`
      stat = $?.exitstatus
      puts 'javaSyntaxCheckWasFuckedUp' if stat !=0

    elsif /\.(sh|bash)$/.match(filename)
      puts "Processing BASH file: #{filename}..."
      `shellcheck #{filename} 1>&2`
      stat = $?.exitstatus
      puts 'shellSyntaxCheckWasFuckedUp' if stat ==127

    elsif /\.(yaml|yml)$/.match(filename)
      puts "Processing YAML file: #{filename}..."
      `yamllint #{filename} 1>&2`
      stat = $?.exitstatus
      puts 'yamlSyntaxCheckWasFuckedUp' if stat !=0

    elsif /\.json$/.match(filename)
      puts "Processing JSON file: #{filename}..."
      `jsonlint #{filename} 1>&2`
      stat = $?.exitstatus
      puts 'jsonSyntaxCheckWasFuckedUp' if stat !=0

    elsif /\.(xml|xmllint)$/.match(filename)
      puts "Processing XML file: #{filename}..."
      `xmllint --nowarning #{filename}`
      stat = $?.exitstatus
      puts 'xmlSyntaxCheckWasFuckedUp' if stat !=0

    elsif /\.haml$/.match(filename)
      puts "Processing HAML file: #{filename}..."
      `haml-lint --include-linter ClassAttributeWithStaticValue #{filename} 1>&2`
      stat = $?.exitstatus
      puts 'hamlSyntaxCheckWasFuckedUp' if stat !=0

    elsif /\.(htm|html|erb)$/.match(filename)
      puts "Processing HTML file: #{filename}..."
      `tidy -q #{filename}`
      stat = $?.exitstatus
      puts 'htmlSyntaxCheckWasFuckedUp' if stat ==2   #stat = 1 - warning, 2 - error

    else
      puts "Unknown file: #{filename} - skipped"
    end

  else
    puts "#{filename} - does not exist!"
  end
end


#msg = "##teamcity[testFailed name='MyTest.test1' message='failure message' details='message and stack trace']"
#puts msg
#lambda {return stat}

