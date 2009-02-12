require 'rubygems'
require 'spec/rake/spectask'

desc 'Default: run spec examples'
task :default => 'as_time_goes_by:spec'

namespace :as_time_goes_by do
  desc "Run unit specifications"
  Spec::Rake::SpecTask.new(:spec) do |t|
    t.spec_opts << %w(-fs --color) << %w(-o spec/spec.opts)
    t.spec_opts << '--loadby' << 'random'
    t.spec_files = Dir["spec/*_spec.rb"]

    t.rcov_opts << '--exclude' << 'spec'
    t.rcov = ENV.has_key?('NO_RCOV') ? ENV['NO_RCOV'] != 'true' : true
    t.rcov_opts << '--text-summary'
    t.rcov_opts << '--sort' << 'coverage' << '--sort-reverse'
#    t.rcov_opts << '--only-uncovered'
  end
end
