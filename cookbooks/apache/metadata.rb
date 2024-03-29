name 'apache'
maintainer 'shankar'
maintainer_email 'shankar@example.com'
license 'All Rights Reserved'
description 'Installs/Configures apache'
long_description 'Installs/Configures apache'
version '2.0.1'
chef_version '>= 14.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/apache/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/apache'


supports 'centos'
supports 'fedora'
supports 'redhat'

github_url = "https://github.com/trovsankar/chef-basic/tree/master/cookbooks/apache"

source_url github_url
issues_url "#{github_url}/issues"
