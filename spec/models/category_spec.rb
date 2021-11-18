require 'rails_helper'

RSpec.describe Category, type: :model do
  describe '#create' do
    it 'when attributes are not valid' do
      # arrange / arreglar / preparar
      new_category = Category.new
      # act / 
      new_category.save
      # assert / 
      expect(new_category.errors[:name].count).to_not be(0)
    end

    it 'when attributes are valid' do
      new_category = Category.new(name: 'food')

      new_category.save

      expect(new_category.id).to_not be(nil)
    end

    it 'when i want to save two categories with the same name' do
      c1 = Category.new(name: 'toys')
      c2 = Category.new(name: 'toys')

      c1.save
      c2.save

      expect(c2.errors[:name].count).to_not be(0)
    end
  end
end
