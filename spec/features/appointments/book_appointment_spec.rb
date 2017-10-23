require 'rails_helper'

feature "booking appointment" do
  before(:all) do
    Rails.application.load_seed
  end

  context 'successful bookings' do
    before do
      visit new_appointment_url
      fill_in 'appointment[customer_name]', with: Faker::Name.name
      fill_in 'appointment[appointment_time]', with: Faker::Date.forward(2)
    end
    scenario "booking with customer name and date" do
      click_button 'Book Appointment'
      expect(page).to have_content 'Appointment Summary'
    end

    scenario "booking with customer name, date and lavish package" do
      select('Lavish - $29', from: 'appointment[package]', match: :first).select_option

      click_button 'Book Appointment'
      expect(page).to have_content 'Total Price: $29'
    end

    scenario "booking with customer name. date and reveal package" do
      select('Reveal - $79', from: 'appointment[package]', match: :first).select_option

      click_button 'Book Appointment'
      expect(page).to have_content 'Total Price: $79'
    end

    scenario "booking with customer name. date and outright package" do
      select('Outright - $149', from: 'appointment[package]', match: :first).select_option

      click_button 'Book Appointment'
      expect(page).to have_content 'Total Price: $149'
    end

    scenario "booking with customer name, date, lavish package and wax option" do
      select('Lavish - $29', from: 'appointment[package]', match: :first).select_option
      click_link 'add_options'
      check 'appointment[options][0]'
      click_button 'Book Appointment'
      expect(page).to have_content 'Total Price: $69'
    end

    scenario "booking with customer name, date, outright package and all options" do
      select('Outright - $149', from: 'appointment[package]', match: :first).select_option
      click_link 'add_options'
      check 'appointment[options][0]'
      check 'appointment[options][1]'
      check 'appointment[options][2]'
      check 'appointment[options][3]'
      check 'appointment[options][4]'
      click_button 'Book Appointment'
      expect(page).to have_content 'Total Price: $354'
    end
  end

  context 'unsuccessful bookings' do
    before do
      visit new_appointment_url
    end
    scenario "booking without customer name" do
      fill_in 'appointment[appointment_time]', with: Faker::Date.forward(2)

      click_button 'Book Appointment'
      expect(page).to have_content "Customer name can't be blank"
    end

    scenario "booking without appointment date" do
      fill_in 'appointment[customer_name]', with: Faker::Name.name

      click_button 'Book Appointment'
      expect(page).to have_content "Appointment time can't be blank"
    end
  end
end
