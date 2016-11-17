require('rspec')
require('allergies')
require('pry')

describe('Fixnum#coin_combination') do

  it('returns allergen string eggs for allergen score 1') do
    expect((1).allergen()).to(eq(['eggs']))
  end

  it('returns allergen string peanuts for allergen score 1') do
    expect((2).allergen()).to(eq(['peanuts']))
  end

  it('returns shellfish and eggs for allergen score 5') do
    expect((5).allergen()).to(eq(['shellfish', 'eggs']))
  end

  it('returns strawberries and peanuts for allergen score 10') do
    expect((10).allergen()).to(eq(['strawberries', 'peanuts']))
  end

  it('returns tomatoes and peanuts for allergen score 18') do
    expect((18).allergen()).to(eq(['tomatoes', 'peanuts']))
  end

  it('returns chocolate for allergen score 32') do
    expect((32).allergen()).to(eq(['chocolate']))
  end

  it('returns pollen and shellfish for allergen score 32') do
    expect((68).allergen()).to(eq(['pollen', 'shellfish']))
  end

  it('returns cats for allergen score 128') do
    expect((128).allergen()).to(eq(['cats']))
  end

  it('returns all allergens for allergen score 255') do
    expect((255).allergen()).to(eq(['cats', 'pollen', 'chocolate', 'tomatoes', 'strawberries', 'shellfish', 'peanuts', 'eggs']))
  end

  it('Notice for allergen score 256+') do
    expect((256).allergen()).to(eq(["You must be really ill, but please enter a number under 256."]))
  end

end
