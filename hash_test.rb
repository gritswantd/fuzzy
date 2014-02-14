require 'minitest/autorun'
require './hash'

describe 'calculate_hash function' do
  %w{password letmein p4$$w0rd password1234 1234567890 123456789}.each do |password|
    it "works for #{password}" do
      assert calculate_hash password
    end
  end

  it 'works with letters' do
    assert calculate_hash "hello"
  end

  it 'works with numbers' do
    assert calculate_hash "1234"
  end

  it "doesn't work with strange characters" do
    assert calculate_hash "\u2713"
  end

  it "doesn't work with strange characters" do
    assert calculate_hash "aaaaaaaaaaaaa\uFFFF"
  end

  it 'fails on one out of 10000' do
      pass = ""
      trial_count = 1000
      collision_count = 0
      trial_length = 5
      trial_count.times do |n|
        pass = trial_length.times.map do |m|
          [rand(1000)].pack 'c'
        end.join

        begin
          calculate_hash pass
        rescue
          puts "Failed password: #{pass.inspect}"
          collision_count += 1
        end
      end
      puts "Collision rate: #{collision_count.to_f / (trial_count * trial_length).to_f}"
  end
end
