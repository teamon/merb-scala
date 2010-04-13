namespace :scala do
  desc "Compile Scala models"
  task :compile do
    Dir["app/models/*.scala"].each do |file|
      sh "scalac-2.8 #{file}"
    end
  end
end