require 'octokit'
require_relative 'labels'
require_relative 'files'
require_relative 'builder'

class Gitprovision
  include GithubLabels
  include GithubFiles
  include GithubFileBuilder

  def initialize(v1, v2)
    @reponame = v1
    @user = v2
    @client = Octokit::Client.new(:access_token => ENV["GIT_TOKEN"])
    buildit
    labelit
    add_admin
    add_files
  end

  def readme
    "An upcoming project for Ruby for Good"
  end

  def add_admin
    @client.add_collab("rubyforgood/#{@reponame}", @user, {:permission => :admin})
  end

  def buildit
    @client.create_repository(@reponame, options = {organization: 11573263, description: readme})
  end

  def labelit
    @client.labels("rubyforgood/#{@reponame}").each { |lab| @client.delete_label!("rubyforgood/#{@reponame}", "#{lab.name}") }
    LABELS_AND_COLOURS.each {|title, colour| @client.add_label("rubyforgood/#{@reponame}", title, colour)}
  end

  def add_files
    build_files
    add_coc
    add_license
    add_contributing
    add_readme
    add_pr_template
  end
end

v1 = ARGV[0]
v2 = ARGV[1]
Gitprovision.new(v1,v2)
