module CardsHelper
  def active? (num)
    if num == 0
      "active"
    else
      ""
    end
  end
end
