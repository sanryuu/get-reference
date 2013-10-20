# リファレンス取得のためのコードオブジェクト

class Code
  attr_accessor :path, :text

  @text = ""

  def initialize(path)
    if File.exist?(path)
      @path = path
      read_file
    end
  end

  #== ファイル読み込みメソッド
  #
  # @pathのファイルの内容を読み込み
  #
  def read_file
    @text = ""
    file_pointer = File.open(@path)
    file_pointer.each do |fp|
      @text << fp
    end
  end

end
