Autotest.add_discovery { "rails" }
Autotest.add_discovery { "rspec2" }

autotest.add_hook :initialize do |autotest|
  autotest.add_mapping(/^spec\/requests\/.*_spec\.rb$/) do
    autotest.files_matching(/^spec\/requests\/.*_spec\/.rb$/)
  end
end
