class Stock < ActiveRecord::Base
  
  def self.new_from_lookup(ticker_symbol)
    look_up_stock=StockQuote::Stock.quote(ticker_symbol)
    price = look_up_stock.latest_price
    new(name: look_up_stock.company_name, ticker: look_up_stock.symbol, last_price: price)
  end
  
  
end
