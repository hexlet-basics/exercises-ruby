# frozen_string_literal: true

# BEGIN
def convert(languages)
  languages.map do |name, _, typing_name|
    [name, typing_name]
  end
  # The Ruby Way
  # languages.map { |(name, _, typing_name)| [name, typing_name] }
end
# END
