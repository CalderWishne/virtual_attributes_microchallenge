require 'spec_helper'

describe Question do
  it 'should have a title' do
    q = Question.create(:title => "my title")
    expect(q.title).to eq "my title"
  end

  it 'should have content' do
    q = Question.create(:content => "question content")
    expect(q.content).to eq "question content"
  end

  it 'should have tags' do
    q = Question.create(tag_list: "tag1,tag2,tag3")
    expect(q.tags.map(&:name)).to eq ["tag1","tag2","tag3"]
  end
end
