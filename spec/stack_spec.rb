require 'spec_helper'

RSpec.describe Stack do
  let(:stack) { Stack.new }

  describe 'Initialization' do
    it 'assigns a size' do
      expect(stack.size).to eq 0
    end

    it 'has no items' do
      expect(stack.items).to eq []
    end
  end

  describe 'Methods' do
    describe '#push' do
      it 'pushes items into the stack' do
        stack.push(1)
        expect(stack.items).to eq [1]
      end
    end

    describe '#pop' do
      context 'with existing items' do
        before do
          stack.push(1)
          stack.push(2)
        end

        it 'removes the last item' do
          stack.pop
          expect(stack.items).to eq [1]
        end
      end

      context 'without any existing items' do
        it 'returns nil' do
          expect(stack.pop).to be_nil
        end
      end
    end

    describe '#size' do
      context 'without any items' do
        it 'is 0' do
          expect(stack.size).to eq 0
        end
      end

      context 'with two items' do
        before do
          stack.push(1)
          stack.push(2)
        end

        it 'is 2' do
          expect(stack.size).to eq 2
        end
      end
    end
  end
end
