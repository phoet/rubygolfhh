class Golf
  def self.method_missing n, *a
    def a.should *o
      1
    end
    a
  end
end
