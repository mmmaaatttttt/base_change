require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Mathalicious" }

	describe "Home page" do

		it "should have the h1 'base_title'" do
			visit '/static_pages/home'
			page.should have_selector('h1', text: 'Mathalicious')
		end

		it "should have the title 'Welcome'" do
			visit '/static_pages/home'
			page.should have_selector('title', text: "Welcome | #{base_title}")
		end
	end

	describe "About page" do

		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', text: 'About Us')
		end

		it "should have the title 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('title', text: "About Us | #{base_title}")
		end
	end

	describe "Contact page" do

		it "should have the h1 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', text: 'Contact Us')
		end

		it "should have the title 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('title', text: "Contact Us | #{base_title}")
		end
	end

	describe "Exemplars" do

		it "should have the h1 'How to'" do
			visit '/static_pages/exemplars'
			page.should have_selector('h1', text: 'How to')
		end

		it "should have the title 'How to...'" do
			visit '/static_pages/exemplars'
			page.should have_selector('title', text: "How to Teach Our Lessons | #{base_title}")
		end
	end

	describe "Lesson page" do

		it "should have the h1 'Lessons'" do
			visit '/static_pages/lessons'
			page.should have_selector('h1', text: 'Lessons')
		end

		it "should have the title 'Lessons'" do
			visit '/static_pages/lessons'
			page.should have_selector('title', text: "Lessons | #{base_title}")
		end
	end
end
