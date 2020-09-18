class Project
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end


    def backers
        array = ProjectBacker.all.select {|backer| backer.project == self}
        array.map {|backer| backer.backer}
    end
end