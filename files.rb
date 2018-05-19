module GithubFiles

  def add_pr_template
    @client.create_contents(
      "rubyforgood/#{@reponame}",
      ".github/PULL_REQUEST_TEMPLATE.md",
      "Pull Request Template",
      File.open("pr_template.txt").read,
      :branch => "master"
    )
  end

  def add_readme
    @client.create_contents(
      "rubyforgood/#{@reponame}",
      "README.md",
      "Adding Readme File",
      readme,
      :branch => "master"
    )
  end

  def add_contributing
    @client.create_contents(
      "rubyforgood/#{@reponame}",
      "CONTRIBUTING.md",
      "Adding Contributing File",
      File.open("contributing.txt").read,
      :branch => "master"
    )
  end

  def add_license
    @client.create_contents(
      "rubyforgood/#{@reponame}",
      "LICENSE.md",
      "Adding License",
      File.open("license.txt").read,
      :branch => "master"
    )
  end

  def add_coc
    @client.create_contents(
      "rubyforgood/#{@reponame}",
      "code-of-conduct.md",
      "Adding Code of Conduct",
      File.open("coc.md").read,
      :branch => "master"
    )
  end
end