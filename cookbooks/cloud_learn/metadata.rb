name 'cloud_learn'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures cloud_learn'
long_description 'Installs/Configures cloud_learn'
version '1.12.0'

%w(learn).each do |c|
  depends c
end

depends 'common_apps', '~> 0.1.0'