require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
  specify { expect(BonusDrink.total_count_for(2)).to eq 2 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }   # 3  + (3  - 1) / 2 = 4
  specify { expect(BonusDrink.total_count_for(4)).to eq 5 }   # 4  + (4  - 1) / 2 = 5
  specify { expect(BonusDrink.total_count_for(5)).to eq 7 }   # 5  + (5  - 1) / 2 = 7
  specify { expect(BonusDrink.total_count_for(6)).to eq 8 }   # 6  + (6  - 1) / 2 = 8
  specify { expect(BonusDrink.total_count_for(7)).to eq 10 }  # 7  + (7  - 1) / 2 = 10
  specify { expect(BonusDrink.total_count_for(8)).to eq 11 }  # 8  + (8  - 1) / 2 = 11
  specify { expect(BonusDrink.total_count_for(9)).to eq 13 }  # 9  + (9  - 1) / 2 = 13
  specify { expect(BonusDrink.total_count_for(10)).to eq 14 } # 10 + (10 - 1) / 2 = 14
  specify { expect(BonusDrink.total_count_for(11)).to eq 16 } # 11 + (11 - 1) / 2 = 16
  specify { expect(BonusDrink.total_count_for(100)).to eq 149 } # 100 + (100 - 1) / 2 = 149
end
