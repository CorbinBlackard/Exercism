class Acronym
  def self.abbreviate(string)
    clean_string = string.gsub(/[^a-zA-Z -]/, "")
    words = clean_string.split(/[ -]/)
    abb = words.map { |word| word[0]}
    abb.join.upcase
  end
end