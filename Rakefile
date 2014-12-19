require "bundler/gem_tasks"

task :default => :spec
desc "Ejecutar las espectativas de la clase frutaltree"
task :spec do
   sh "rspec -I. spec/FrutalTree_spec.rb"
end
task :frutita do
   sh "ruby -I. lib/frutal/frutitas.rb"
end