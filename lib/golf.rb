class Golf
  
  class << self
  
  def hole1 a
     a.inject :*
   end
   def hole4 a
     a.collect! { |s|
         s = "hat(#{s})" if s.index('man')
         s[-1] = '(bone))' if s.index('dog')
         s[0..2] = 'dead' if s.index('cat')
         s
       }
     a
   end
  def hole5 v
    ret = []
    v.each{|i| ret << [i]}
    (v.size - 1).times{|i| ret << [v[i], v[i + 1]]}
    (v.size - 2).times{|i| ret << [v[i], v[i + 1], v[i + 2]]}
    ret << v
    ret
  end
  
  def hole3 s
    s = s.downcase
    return s == s.reverse
  end
  
  def hole2 v
    ret = []
    (v[0]..v[1]).each do |i|
      ret << i if hole3(i.to_s) 
    end
    ret
  end
  
  def hole6 q
    r = []
    q.times do |n|
      n = n + 1
      s = ""
      s << "fizz" if n % 3 == 0
      s << "buzz" if n % 5 == 0
      s = n if s.empty?
      r << s
    end
    r
  end
  
  def hole8 q
    r = [1,1]
    (q - 2).times{ r << r[-2] + r[-1] }
    r
  end
  
  def hole7 v
    ret = []
    l, r = v.first, nil
    v.each do |i|
      if r && i != r + 1
        if l == r
          ret << "#{r}"
        else
          ret << "#{l}-#{r}"
        end
        l = i
      end
      r = i
    end
    ret << "#{l}-#{r}"
    ret
  end
end
end
