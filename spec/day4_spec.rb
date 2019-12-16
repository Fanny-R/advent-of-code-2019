require_relative '../day4.rb'

describe "is_valid" do

  subject { expect(is_valid(password)).to eq expected }
  describe "with password 111111" do
    let(:password) { '111111' }
    let(:expected) { false }
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

  describe "with password 112233" do
    let(:password) { '112233' }
    let(:expected) { true }
    it { subject }
  end

  describe "with password 123444" do
    let(:password) { '123444' }
    let(:expected) { false }
    it { subject }
  end

  describe "with password 111122" do
    let(:password) { '111122' }
    let(:expected) { true }
    it { subject }
  end

  describe "with password 223333" do
    let(:password) { '223333' }
    let(:expected) { true }
    it { subject }
  end
end
