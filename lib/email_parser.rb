# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

attr_accessor :emails

def initialize(emails)
@emails = emails
end

  def parse
  #  new_array = @emails.strip.split(/[,]/)
  # new_array = @emails.split(/[,]/).map(&:strip)
  new_array = @emails.split(/\W+/).map(&:strip)
  # new_array.reject { |item| item.empty? }
  new_array.uniq
  end

end
