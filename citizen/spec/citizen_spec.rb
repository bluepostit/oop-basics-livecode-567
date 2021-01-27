require_relative '../citizen'

describe Citizen do
  describe '#initialize' do
    it 'should receive 3 arguments' do
      joe = Citizen.new('joe', 'jones', 21)
      expect(joe.first_name).to eq('joe')
      expect(joe.last_name).to eq('jones')
      expect(joe.age).to eq(21)
    end
  end

  describe '#can_vote?' do
    it 'should return true if citizen is 18 years or older' do
      paul = Citizen.new('paul', 'jones', 18)
      expect(paul.can_vote?).to eq(true)

      paul = Citizen.new('paul', 'jones', 25)
      expect(paul.can_vote?).to eq(true)
    end
  end

  describe '#full_name' do
    it "should return the citizen's full name" do
      sheila = Citizen.new('sheila', 'smith', 21)
      expect(sheila.full_name).to eq('Sheila Smith')
    end
  end
end
