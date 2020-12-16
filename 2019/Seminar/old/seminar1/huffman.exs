defmodule Huffman do

  def sample do
    'the quick brown fox jumps over the lazy dog
    this is a sample text that we will use when we build
    up a table we will only handle lower case letters and
    no punctuation symbols the frequency will of course not
    represent english but it is probably not that far off'
  end

  def text() do
    'aaaabbbbcccdddeeffgh'
  end

  def text()  do
    'this is something that we should encode'
  end

  def test do
    sample = sample()
    text = text()
    tree = tree(text)
    # encode = encode_table(tree)
    # decode = decode_table(tree)
    # text = text()
    # seq = encode(text, encode)
    # decode(seq, decode)
  end

  def tree(sample) do
    freq = freq(sample)
    huffman(freq)
  end

  # Count frequency of a sample text
  # [] är en tom lista som fylls med tupler
  def freq(sample) do
    freq(sample, [])
  end

  # argument freq är listan med tupler. Dvs freq[] hade varit benämningen i Java.
  def freq([], freq), do: freq

  # argument freq är listan med tupler. Dvs freq[] hade varit benämningen i Java.
  def freq([char | rest], freq) do
    freq(rest, count(char, freq))
  end

  def count(char, []) do
    [{char, 1}]
  end

  # argument freq är listan med tupler. Dvs freq[] hade varit benämningen i Java.
  def count(char, [{char, n} | freq]) do
    [{char,n+1} | freq]
  end

  # argument freq är listan med tupler. Dvs freq[] hade varit benämningen i Java.
  def count(char, [elem | freq]) do
    [elem | count(char, freq)]
  end

  def huffman(freq) do
    sorted = Enum.sort(freq, fn({_, x}, {_, y}) -> x < y end)
    huffman_tree(sorted)
  end

  def huffman_tree([{tree, _}]), do: tree

  def huffman_tree([{a, afreq}, {b, bfreq} | rest]) do
    huffman_tree(insert({{a, b}, afreq + bfreq}, rest))
  end

  def insert({a, afreq}, []), do: [{a, afreq}]

  def insert({a, afreq}, [{b, bfreq} | rest]) when afreq < bfreq do
    [{a, afreq}, {b, bfreq} | rest]
  end

  def insert({a, afreq}, [{b, bfreq} | rest]) do
    [{b, bfreq} | insert({a, afreq}, rest)]
  end

  def encode_table(tree) do
    # To implement...
  end

  def decode_table(tree) do
    # To implement...
  end

  def encode(text, table) do
    # To implement...
  end

  def decode(seq, tree) do
    # To implement...
  end
end
