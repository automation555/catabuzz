class CourseLecture < ActiveRecord::Base
  acts_as_ferret :field => [:days, :start_time, :end_time, :instructor, :course_code, :course_name]
	belongs_to :course
	has_and_belongs_to_many :schedules
	
  # t.string  "course_lecture_code"
  # t.integer "enrollment_max"
  # t.integer "enrollment_current"
  # t.string  "days"
  # t.integer "start_time"
  # t.integer "end_time"
  # t.string  "location"
  # t.string  "instructor"
  # t.string  "update_url"  (example: "http://info.sjsu.edu/web-dbgen/soc-fall-courses/c667552.html")
  # t.string  "footnotes"
  # t.string  "type"
  # t.string  "section"
  # t.integer "course_id",           :null => false
	
	
	def course_code
		return self.course.course_code
	end
	
	def course_name
		return self.course.name
	end
	
	def units
		return self.course.units
	end
	
	validates_presence_of :course
	validates_presence_of :schedules
end
