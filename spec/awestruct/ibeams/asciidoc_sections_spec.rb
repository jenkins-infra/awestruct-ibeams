require 'spec_helper'
require 'awestruct/ibeams/asciidoc_sections'

describe Awestruct::IBeams::AsciidocSections do
  it { should be_instance_of Module }

  context 'when mixed into a dummy pipeline' do
    subject(:pipeline) do
      Class.new { extend Awestruct::IBeams::AsciidocSections }
    end

    it { should be_instance_of Class }

    it { should respond_to :sections_from }

    describe '.sections_from' do
      context 'error cases' do
        it 'should throw InvalidPath when a nil path is passed' do
          expect {
            pipeline.sections_from(nil)
          }.to raise_error(Awestruct::IBeams::Errors::InvalidPath)
        end

        it 'should throw InvalidPath when a bad path is passed' do
          expect {
            pipeline.sections_from('/tmp/there/is/no/way/this/path/exists')
          }.to raise_error(Awestruct::IBeams::Errors::InvalidPath)
        end
      end

    end

    it { should respond_to :section_anchor }
    describe '.section_anchor' do
      let(:doc) { double('Asciidoctor::Document', :attributes => {} ) }

      it 'should hyphenate the title by default' do
        expect(
          pipeline.section_anchor('Hello World', doc)
        ).to eql('hello-world')
      end

      it 'should downcase a single-word title' do
        expect(
          pipeline.section_anchor('RSpec!', doc)
        ).to eql('rspec')
      end
    end


    it { should respond_to :find_subsections_from }

  end
end
