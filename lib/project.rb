class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        new_backed_project = ProjectBacker.new(self, backer)
    end

    def backers
        backers = []
        ProjectBacker.all.each do |project|
            if project.project == self
                backers << project.backer
            end
        end
        backers
    end
end