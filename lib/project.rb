class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers_arr = ProjectBacker.all.select {|title| title.project == self}
        backers_arr.map {|project| project.backer}
    end
end