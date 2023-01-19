require 'diary_entry'

RSpec.describe DiaryEntry do
  it "title method returns title as a string" do
    test = DiaryEntry.new("Today", "I cook")
    expect(test.title).to eq "Today"
  end

  it "contents method returns contents as a string" do
    test = DiaryEntry.new("Today", "I cook")
    expect(test.contents).to eq 'I cook'
  end

  it "returns the length of the contents as a number" do
    test = DiaryEntry.new("Today", "I cook")
    expect(test.count_words).to eq 2
  end

  it "returns the estimated time of the contents being read" do
    test = DiaryEntry.new("Today", "I cook")
    expect(test.reading_time(4)).to eq 0.5
  end

  it "prints the contents given a wpm and a time" do
    test = DiaryEntry.new("Today", "I cook")
    expect(test.reading_chunk(1, 1)).to eq "I"
  end
  
  it "prints the next word chunk" do
    test = DiaryEntry.new("Today", "I cook")
    expect(test.reading_chunk(1, 1)).to eq "cook"
  end

  it "prints the whole contents plus the first word again" do
    test = DiaryEntry.new("Today", "I cook")
    expect(test.reading_chunk(3, 1)).to eq "I cook I"
  end
end