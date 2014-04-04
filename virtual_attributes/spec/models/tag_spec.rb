require 'spec_helper'

describe Tag do
  it 'should have a name' do
    t = Tag.create(name: "tag name")
    expect(t.name).to eq "tag name"
  end

  context "make_tags" do
    it 'should make tags from a csv list of tag names' do
      tags = Tag.make_tags("tag1,tag2,tag3")
      expect(tags.map(&:name)).to eq ["tag1","tag2","tag3"]
    end

    it 'should not make tags from an empty tag list' do
      tags = Tag.make_tags("")
      expect(tags).to eq nil
    end
  end
end
