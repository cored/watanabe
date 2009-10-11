class TruckLoads
  def num_trucks(num_crates, load_size)
    trucks = [] 
    1.upto(num_crates+1) do |num| 
      if num <= load_size 
        trucks[num] = 1 
      elsif is_even?(num)
        if num/2<=load_size
          trucks[num]=2
        else
          trucks[num]=2*trucks[num/2]
        end
      else
        if num/2+1<=load_size
          trucks[num]=2
        elsif num/2+1>load_size && num/2<load_size
          trucks[num]=1+trucks[num/2+1];
        else
          trucks[num]=trucks[num/2]+trucks[num/2+1]
        end
      end
    end
    trucks[num_crates]
  end 

  private 
  def is_even?(num)
    num % 2 == 0
  end 
end
