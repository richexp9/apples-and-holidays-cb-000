require 'pry'
holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}


def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  winter_hash = holiday_hash[:winter]
  winter_hash.each { |holiday, item|
    winter_hash[holiday] = supply

  }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each { |season, holidayList|
    puts "#{season}:".capitalize!
    holidayList.each { |holiday, items|
      holidayNameArray= holiday.to_s.gsub('_',' ').split(' ')
      holidayNameArray.collect { |eachWord|
        eachWord.capitalize!
       }
      capitalizedHolidayName = holidayNameArray.join(' ')
      puts "  #{capitalizedHolidayName}: #{items.join(', ')}"
    }
  }

end



#all_supplies_in_holidays(holiday_hash)
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
# //iterate through holiday_supplies {season, holiday_hash}
#   //iterate through seasons hash {holiday, itemArray}
#     //iterate through hitems {item}
#       // if item == "BBQ"
#         // then BBQHoliday.push(holiday)
#

  collect =[]
  holiday_supplies.each { |season, holiday_hash|
    holiday_hash.each { |holiday, itemArray|
      itemArray.each { |item|
        if item == "BBQ"
          collect.push(item)

        end
      }
    }
  }
end
