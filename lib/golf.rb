class Golf

  class << self

    def hole1 a
      a.inject :*
    end
    
    def hole4 a
      a.map{|z| z.gsub('cat', 'dead').gsub(/(man.+)/, 'hat(\1)').gsub(/dog\((.+)\)/, 'dog(\1(bone))') }
    end
    
    def hole5 p
      (1..4).map{|i| p.each_cons(i).to_a}.inject :+
    end

    def hole3 s
      s = s.downcase
      s == s.reverse
    end

    def hole2 v
      w = []
      (v[0]..v[1]).each { |i|
        w << i if hole3 i.to_s
      }
      w
    end

    def hole6 q
      r = []
      q.times { |n|
        n += 1
        s = ""
        s << "fizz" if n % 3 == 0
        s << "buzz" if n % 5 == 0
        s = n if s == ""
        r << s
      }
      r
    end

    def hole8 q
      r = [1,1]
      (q - 2).times{ r << r[-2] + r[-1] }
      r
    end

    def hole7 v
      w = []
      l, r = v[0]
      v.each { |i|
        if r && i != r + 1
          w << (l == r ? "#{r}" : "#{l}-#{r}")
          l = i
        end
        r = i
      }
      w << "#{l}-#{r}"
      w
    end
  end
end
