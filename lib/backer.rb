class Backer
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    # def projects
    #     self.backed_projects.map {|project| project.backer}
    # end


    def backed_projects
        array = ProjectBacker.all.select {|project| project.backer == self}
        array.map {|project| project.project}
    end


end