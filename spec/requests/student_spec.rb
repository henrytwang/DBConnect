require 'spec_helper'

describe Student do

	context "while signed in" do

		before do 
			@student = FactoryGirl.create(:student)
			@student2 = FactoryGirl.create(:student2)
		end
		it "has a profile page" do
			visit student_path(student)
			page.should have_content("#{student.first_name}'s Profile Page")
		end

		it "can view all DBC participants" do
			visit student_index
			page.should have_content('All Students')
		end

		it "can view other DBC student/alumni profiles" do
			visit student_path(student2)
			page.should have_content('Profile Page')
		end

		it "can view other DBC student/alumni contact info" do
			visit student_path(student2)
			page.should have_content('contact info')
		end

		it "can view other DBC student/alumni statuses" do
			visit student_path(student2)
			page.should have_content('active')
		end

		it "can follow/show_interest in other users" do
			visit student_path(student2)
			click_link("Follow").should change(student.following, :count).by(1)
		end

		it "can contact via email other DBC alumni/students" do
			visit student_path(student2)
			click_link "Contact"
			current_path.should == student_contact_path
		end

	end


	context "while NOT signed in " do 

		it "should not be able to follow/show_interest in other users" do 
			visit student_path(student2)
			current_path.should == root_path
		end

		it "canNOT contact via email other DBC alumni/students" do
			visit student_path(student2)
			current_path.should == root_path
		end

	end


end