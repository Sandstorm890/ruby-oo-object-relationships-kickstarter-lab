require "pry"

class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self

    end

    def back_project(project)
        new_backed_project = ProjectBacker.new(project, self)
    end

    def backed_projects
        backed = []
        ProjectBacker.all.each do |project| 
            # binding.pry
            if project.backer == self
                # binding.pry
                backed << project.project

            end
        end
        # binding.pry
        backed
    end
end