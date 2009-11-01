class DivToZero
  def last_two(num, factor)
    num = num-(num.to_s[-2,2]).to_i 
    sol = ''
    num.upto(num+99) do |n|
     if n % factor == 0 
       sol = n.to_s[-2,2]
       break
     end
    end
    sol
  end 
end
