# TODO rake tasks
namespace :thinking_sphinx do
  # task :index do
  #   ThinkingSphinx::Deltas::ResqueDelta.cancel_thinking_sphinx_jobs
  # end
  # 
  # desc "Process stored delta index requests"
  # task :resque_delta => :app_env do
  #   require 'delayed/worker'
  #   require 'thinking_sphinx/deltas/resque_delta'
  #   
  #   Delayed::Worker.new(
  #     :min_priority => ENV['MIN_PRIORITY'],
  #     :max_priority => ENV['MAX_PRIORITY']
  #   ).start
  # end
end

namespace :ts do
  # desc "Process stored delta index requests"
  # task :rd => "thinking_sphinx:resque_delta"
end
