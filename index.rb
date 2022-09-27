MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?',
  '---...' => ':',
  '-.-.-.' => ';',
  '-...-' => '-',
  '.-..-.' => '\'',
  '.--.-.' => '@',
  '..--.-' => '_',
  '...---...' => 'SOS',
  '-..-.' => '&',
  '.-...' => '\"',
  '-.-.-' => '=',
  '.-.-.' => '+',
  '-....-' => '-'
}.freeze

def decode_char(string)
  if MORSE_CODE.key?(string)
    MORSE_CODE[string]
  else
    ' '
  end
end

def decode_word(string)
  array = string.split
  decoded_word = ''
  array.each do |char|
    decoded_word += decode_char(char)
  end
  "#{decoded_word} "
end

def decode_message(string)
  array = string.split('   ')
  decoded_message = ''
  array.each do |word|
    decoded_message += decode_word(word)
  end
  decoded_message
end

puts decode_message('-- -.--   -. .- -- .   .. .-.-.-')
