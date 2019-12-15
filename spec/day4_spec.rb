require_relative '../day4.rb'

describe "is_valid" do 

  subject { expect(is_valid(password)).to eq expected }
  describe "with password 111111" do
  	let(:password) { '111111' }
  	let(:expected) { true }
	it { subject }
  end

  describe "with password 223450" do
  	let(:password) { '223450' }
  	let(:expected) { false }
	it { subject }
  end

  describe "with password 123789" do
  	let(:password) { '123789' }
  	let(:expected) { false }
	it { subject }
  end
end
