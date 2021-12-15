class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.grade_sort
        render json: grades
    end

    def highest_grade
        student = Student.grade_sort.first
        render json: student
    end
end
