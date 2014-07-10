ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.acronym 'OAuth'
  inflect.acronym 'API'
  inflect.acronym 'APIs'
end

# Taken from https://github.com/rails/rails/pull/14146
# to fix API::OAuth inflection
module ActiveSupport::Inflector
  def underscore(camel_cased_word)
  word = camel_cased_word.to_s.gsub('::', '/')
  word.gsub!(/(?<=[A-Za-z\d\/]|^)(#{inflections.acronym_regex})(?=\b|[^a-z])/) { "#{'_' unless $`.empty? or $`[-1] == '/'}#{$1.downcase}" }
  word.gsub!(/([A-Z\d]+)([A-Z][a-z])/,'\1_\2')
  word.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
  word.tr!("-", "_")
  word.downcase!
  word
end
end
