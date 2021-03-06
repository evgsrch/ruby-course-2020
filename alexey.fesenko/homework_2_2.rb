class String
  BRACKETS_PAIRS = { '(' => ')', '{' => '}', '<' => '>', '[' => ']' }.freeze

  def valid?
    if self.length.odd?
      return false
    end

    iteration = self.length / 2
    index = 0
    index_last = self.length

    while iteration != 0
      start_symbol = self[index]
      stop_symbol = BRACKETS_PAIRS[start_symbol]
      return false unless stop_symbol
      stop_symbolcheck = self[index_last - 1]
      if stop_symbol != stop_symbolcheck
        return false
      end
      iteration -= 1
      index += 1
      index_last -= 1
    end
    true
  end
end

#p "({[]})".valid?
#p "{()]".valid?
#p "{{}{{{}".valid?
#p "<({[]})>".valid?
