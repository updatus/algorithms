require 'byebug'

class String
  def brackets_match?
    open = []
    pairs = { ')' => '(', '}' => '{', ']' => '[', '>' => '<' }
    self.each_char do |x|
      open.push x if '({[<'.include?(x)
      if ')}]>'.include?(x)
        return false unless pairs[x] == open.pop
      end
    end
    return true if open.empty?
    return false
  end
end


