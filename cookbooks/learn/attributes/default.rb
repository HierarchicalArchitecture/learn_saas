default['learn']['development']['endpoints']['database'] = "localhost"
default['learn']['staging']['endpoints']['database'] = "localhost"
default['learn']['production']['endpoints']['database'] = "localhost"

default['learn']['endpoints']['database'] = "localhost"

case node.chef_environment
when "learn_saas_development"
    default['learn']['endpoints']['database'] = "#{node['learn']['development']['endpoints']['database']}"
when "learn_saas_staging"
    default['learn']['endpoints']['database'] = "#{node['learn']['staging']['endpoints']['database']}"
when "learn_saas_production"
    default['learn']['endpoints']['database'] = "#{node['learn']['production']['endpoints']['database']}"
end