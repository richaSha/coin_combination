class CoinCombination

  def converter(cents)
    currency_coin = { "Quater" => 25, "Dime" => 10, "Nickel"=>5 ,"Penny" => 1}
    cent_value = ""
    currency_coin.each do |key, value|
      if cents >= value
        cent_value += ((cents / value).to_s)+" "+key+" "
        cents %= value
      end
    end
    # converted_cents.join(",").gsub!(","," ")
    cent_value.strip
  end
end
