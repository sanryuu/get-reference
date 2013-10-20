#! /usr/bin/env ruby

require 'rubygems'
require 'rspec'
require_relative 'Code'

sample_dir = File.expand_path("../sample",__FILE__) + "/"
sample_file = sample_dir + "sample.php"

describe Code do

  describe 'initialize' do
    it "ファイルが存在しない場合" do
      code = Code.new("DoNotExistFile")
      expect(code.path).to be_nil
    end

    it "ファイルパスが保存(ファイルが存在する場合)" do
      code = Code.new(sample_file)
      expect(code.path).to eq(sample_file)
    end
  end

  describe 'read_file' do
    it "ファイルの読み込みの確認" do

      file_pointer = File.open(sample_file)
      file_text = ""
      file_pointer.each do |fp|
        file_text << fp
      end

      code = Code.new(sample_file)
      code.path = sample_file
      code.read_file

      expect(code.text).to eq(file_text)
    end
  end


end
