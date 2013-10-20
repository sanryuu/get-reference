# リファレンス取得のためのコードオブジェクト

class Code
  attr_accessor :path, :text, :extension

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

  #== ファイル読み込みメソッド
  #
  # @pathのファイルの拡張子を@extensionに保存
  #
  def check_extension
    @extension = @path.scan(/\.([^\.]*)$/)[0][0]
  end

end
