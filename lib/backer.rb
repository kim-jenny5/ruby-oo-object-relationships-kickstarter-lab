require 'pry'

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_arr = ProjectBacker.all.select {|project| project.backer == self}
        project_arr.map {|title| title.project}
    end
end