require 'spec_helper'
require 'awestruct/ibeams/datadir'

describe Awestruct::IBeams::DataDir do
  it { should respond_to :execute }
  it { should respond_to :watch }
end
