require 'spec_helper'

describe NoSubscription do
  subject { NoSubscription.new }

  describe '#charge' do
    it 'does not charge the credit card' do
      credit_card = double('credit_card')
      subject.charge(credit_card)

      expect(credit_card).not_to receive(:charge)
    end
  end

  describe '#has_mentoring?' do
    it 'returns false' do
      expect(subject.has_mentoring?).to be false
    end
  end

  describe '#price' do
    it 'has no cost' do
      expect(subject.price).to eq(0)
    end
  end

  describe '#plan_name' do
    it 'should return plan name for no active plan' do
      expect(subject.plan_name).to eq('No Plan')
    end
  end
end
