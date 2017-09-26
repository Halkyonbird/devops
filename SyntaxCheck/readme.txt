# rvm - how does it work on Build agent?

# Syntax Check Realized

.ruby .rake Vagrantfile Rakefile   - ruby -c


.java
http://checkstyle.sourceforge.net/cmdline.html#Command_line_usage
usage:   `java -jar ~/lib/checkstyle-7.0-all.jar -t #{filename}`

.json
gem install jsonlint
https://github.com/PagerDuty/jsonlint

.yaml .yml
gem install yamllint
https://github.com/shortdudey123/yamllint

.xml xmllint
sudo apt install libxml2-utils


.htm .html .erb - tidy
tidy -q the_file.html
-q - This option specifies if Tidy should output the summary of the numbers of errors and warnings, or the welcome or informational messages.
-f  error_file.txt  -  write the errors to a file "error_file.txt"
--show-warnings false

tidy -errors -q -f error_file.txt the_file.html


.haml
sudo gem install haml_lint
https://github.com/brigade/haml-lint

haml-lint --include-linter ClassAttributeWithStaticValue test.haml
without warnings: --include-linter ClassAttributeWithStaticValue

.bash
sudo apt-get install shellcheck




# Initial Task
<copy from Slack>

.java - javac
.json - jq (apt-get install jq)
.xml xmllint (apt-get install xmllint)
.htm .html .erb - tidy

http://stackoverflow.com/questions/1837624/validating-html-from-the-command-line

tidy -errors -q -f error_file.txt the_file.html

.yaml, .haml - convert to .json then use jq

https://github.com/wildducktheories/y2j

.js -  CleanConsole https://github.com/bahmutov/clean-console

</copy from Slack>
by Stan (c)


y2j - A command line tool for converting between YAML and JSON and vice versa.
https://github.com/wildducktheories/y2j

.js -  CleanConsole
clean-console - Quickly load a remote page using phantomjs to check if there are any JavaScript console errors
https://github.com/bahmutov/clean-console

.ruby
(for rails?) Roodi stands for Ruby Object Oriented Design Inferometer. It parses your Ruby code and warns you about design issues you have based on the checks that it has configured.
https://github.com/roodi/roodi

.bash
sudo apt-get install shellcheck