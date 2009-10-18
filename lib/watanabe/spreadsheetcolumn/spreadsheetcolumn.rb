class SpreadSheetColumn
  def label(column)
    sol = ""
    letters = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    if column > letters.length
      index = column-1
      count = 0
      while index >= letters.length
        index -= letters.length
        count += 1
      end
      sol = "#{letters[count-1]}#{letters[index]}"
    else
      sol = letters[column-1]
    end
    sol
  end 
end
