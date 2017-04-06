require 'yaml'

class InsultGenerator
  def self.random_insult
    data = YAML.load_file(File.expand_path("data/insults.yml", File.dirname(__FILE__)))
    column1_rand = data["column1"][rand(50)]
    column2_rand = data["column2"][rand(50)]
    column3_rand = data["column3"][rand(50)]
    "Thou #{column1_rand} #{column2_rand} #{column3_rand}!"
  end
end

#Throw an insult when required.
p InsultGenerator.random_insult
