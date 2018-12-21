require 'rails_helper'

RSpec.describe "As a user" do
  describe "When i visit a vending machine show page" do
    it "I see the name and price of all the snacks associated with that vending machine" do
      vm = Owner.create!(name: "dione").machines.create!(location: "turing")
      vm.snacks.create!(name: "Water", price: 100)

      visit machine_path(vm)

      expect(page).to have_content("Water")
      expect(page).to have_content("$1.00")
    end
  end
  describe "When i visit a vending machine show page" do
    it "i see the average price for all the snacks in the machine" do
      vm = Owner.create!(name: "dione").machines.create!(location: "turing")
      vm.snacks.create!(name: "Water", price: 100)
      vm.snacks.create!(name: "Soda", price: 50)

      visit machine_path(vm)

      expect(page).to have_content("Average Snack Price: $0.75")
    end
  end
end
