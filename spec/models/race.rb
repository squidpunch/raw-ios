describe 'Race' do

  before do
  end

  after do
  end

  it 'should create instance' do
    Race.create.is_a?(Race).should == true
  end
end
