# frozen_string_literal: true

# BEGIN
def get_adjacency_matrix(collection)
  friends = Hash.new { |h, key| h[key] = [] }
  collection.reduce(friends) do |acc, el|
    human, friend = el
    acc[human.to_sym] << friend
    acc
  end
  friends
end
# END
