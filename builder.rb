module GithubFileBuilder

  def build_files
    build_license
    build_contributing
  end

  def build_contributing
    open("contributing.txt", 'w') do |f|
      f.puts "## Contributing"
      f.puts
      f.puts "We ♥ contributors! By participating in this project, you agree to abide by the Ruby for Good [code of conduct]."
      f.puts
      f.puts "**First:** if you're unsure or afraid of *anything*, just ask or submit the issue or pull request anyways. You won't be yelled at for giving your best effort. The worst that can happen is that you'll be politely asked to change something. We appreciate any sort of contributions, and don't want a wall of rules to get in the way of that."
      f.puts
      f.puts "[code of conduct]: https://github.com/rubyforgood/code-of-conduct"
      f.puts
      f.puts "Here are the basic steps to submit a pull request. Make sure that you're working on an [open issue]–if the relevant issue doesn't exist, open it!"
      f.puts
      f.puts "[open issue]: https://github.com/rubyforgood/#{@reponame}/issues"
      f.puts
      f.puts "1. Claim an issue on [our issue tracker][open issue] by assigning it to yourself (core team member) or commenting. If the issue doesn't exist yet, open it."
      f.puts
      f.puts "2. Fork the repo."
      f.puts
      f.puts "3. Run the tests. We only take pull requests with passing tests, and it's great to know that you have a clean slate: `bundle exec rake`"
      f.puts
      f.puts "4. Add a test for your change. If you are adding functionality or fixing a  bug, you should add a test!"
      f.puts
      f.puts "5. Make the test pass."
      f.puts
      f.puts "6. Push to your fork and submit a pull request. Include the issue number (ex. `Resolves #1`) in the PR description."
      f.puts
      f.puts "7. For any changes, please create a feature branch and open a PR for it when you feel it's ready to merge. Even if there's no real disagreement about a PR, at least one other person on the team needs to look over a PR before merging. The purpose of this review requirement is to ensure shared knowledge of the app and its changes and to take advantage of the benefits of working together changes without any single person being a bottleneck to making progress."
      f.puts
      f.puts "At this point you're waiting on us–we'll try to respond to your PR quickly. We may suggest some changes or improvements or alternatives."
      f.puts
      f.puts "Some things that will increase the chance that your pull request is accepted:"
      f.puts
      f.puts "* Use Rails idioms and helpers"
      f.puts "* Include tests that fail without your code, and pass with it"
      f.puts "* Update the documentation, the surrounding one, examples elsewhere, guides, whatever is affected by your contribution"
    end
  end

  def build_license
    open("license.txt", 'w') do |f|
      f.puts "The MIT License (MIT)"
      f.puts
      f.puts "Copyright (c) #{Time.new.year} Ruby for Good"
      f.puts
      f.puts 'Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:'
      f.puts
      f.puts "The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software."
      f.puts
      f.puts 'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.'
    end
  end

end