require 'rails_helper'

RSpec.describe Pair, type: :model do
  describe 'associations' do
    it { should belong_to(:ingredient_1).class_name('Ingredient') }
    it { should belong_to(:ingredient_2).class_name('Ingredient') }
  end
end
