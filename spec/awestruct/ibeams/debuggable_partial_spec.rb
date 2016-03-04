require 'spec_helper'
require 'awestruct/ibeams/debuggable_partial'

describe Awestruct::IBeams::DebuggablePartial do
  it { should be_instance_of Module }

  context 'when mixed into a dummy pipeline' do
    subject(:pipeline) do
      Class.new { extend Awestruct::IBeams::DebuggablePartial}
    end

    it { should be_instance_of Class }
    it { should respond_to :partial }

  end
end
