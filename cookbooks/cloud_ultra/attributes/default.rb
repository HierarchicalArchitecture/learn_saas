default['ultra']['development']['router']['service']['ultra-ui'] = "localhost"
default['ultra']['staging']['router']['service']['ultra-ui'] = "localhost"
default['ultra']['production']['router']['service']['ultra-ui'] = "localhost"

default['ultra']['router']['service']['ultra-ui'] = "localhost"

case node.chef_environment
when "learn_saas_development"
    default['ultra']['router']['service']['ultra-ui'] = "#{node['ultra']['development']['router']['service']['ultra-ui']}"
when "learn_saas_staging"
    default['ultra']['router']['service']['ultra-ui'] = "#{node['ultra']['staging']['router']['service']['ultra-ui']}"
when "learn_saas_production"
    default['ultra']['router']['service']['ultra-ui'] = "#{node['ultra']['production']['router']['service']['ultra-ui']}"
end