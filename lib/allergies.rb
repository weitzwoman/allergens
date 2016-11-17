class Fixnum
  define_method(:allergen) do
    allergy_score = self
    allergenArray = []
    eggs = 1
    peanuts = 2
    shellfish = 4
    strawberries = 8
    tomatoes = 16
    chocolate = 32
    pollen = 64
    cats = 128

    until allergy_score < cats do
      allergenArray.push("cats")
      allergy_score = allergy_score - cats
    end

    until allergy_score < pollen do
      allergenArray.push("pollen")
      allergy_score = allergy_score - pollen
    end

    until allergy_score < chocolate do
      allergenArray.push("chocolate")
      allergy_score = allergy_score - chocolate
    end

    until allergy_score < tomatoes do
      allergenArray.push("tomatoes")
      allergy_score = allergy_score - tomatoes
    end

    until allergy_score < strawberries do
      allergenArray.push("strawberries")
      allergy_score = allergy_score - strawberries
    end

    until allergy_score < shellfish do
      allergenArray.push("shellfish")
      allergy_score = allergy_score - shellfish
    end

    until allergy_score < peanuts do
      allergenArray.push("peanuts")
      allergy_score = allergy_score - peanuts
    end

    until eggs % (allergy_score + 1) == 0 do
      allergenArray.push("eggs")
      allergy_score = allergy_score - eggs
    end

    if self > 255
      allergenArray = ["You must be really ill, but please enter a number under 256."]
    end

    allergenArray
  end
end
