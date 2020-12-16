defmodule HuffmanMap do

  def text() do
    'aaaabbbbcccdddeeffgh'
  end

  def test do
    text = text()
    tree = tree(text)
    # encode = encode_table(tree)
    # decode = decode_table(tree)
    # text = text()
    # seq = encode(text, encode)
    # decode(seq, decode)
  end

  def freq(text) do
    freq(text, [])
  end

  def freq([char | rest], freq) do
    freq(rest, count(char, freq))
  end

end
