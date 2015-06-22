guard :rspec, cmd: "bundle exec rspec" do
  require "ostruct"

  # Generic Ruby apps
  rspec = OpenStruct.new
  rspec.spec = ->(m) { "spec/#{m}_spec.rb" }
  rspec.spec_dir = "spec"
  rspec.spec_helper = "spec/spec_helper.rb"

  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$}) { |m|
    rspec.spec.("lib/#{m[1]}")
  }
  watch(%r{^lib/rummaging/(.+)\.rb$}) { |m|
    rspec.spec.("lib/rummaging/#{m[1]}")
    rspec.spec.("lib/rummaging")
  }

  watch(rspec.spec_helper)      { rspec.spec_dir }

end
