library(Rbitcoin)


## Not run:
# get ticker from market
bitstampAPI = function() {
  ticker_all = rbindlist(list(
    market.api.process(market = 'bitstamp', currency_pair = c('BTC', 'USD'), action='ticker')
  ))
  return(ticker_all)
}

krakenAPI = function() {
  ticker_all = rbindlist(list(
      market.api.process(market = 'kraken', currency_pair = c('BTC','EUR'), action='ticker')
      ,{;
        market.api.process(market = 'kraken', currency_pair = c('LTC','EUR'), action='ticker')}
      ,{;
        market.api.process(market = 'kraken', currency_pair = c('BTC','LTC'), action='ticker')}
    ))  
  return(ticker_all)
}

btceAPI = function() {
  ticker_all = rbindlist(list(
    market.api.process(market = 'btce', currency_pair = c('LTC', 'USD'), action='ticker')
    ,{;
      market.api.process(market = 'btce', currency_pair = c('LTC', 'BTC'), action='ticker')}
    ,{;
      market.api.process(market = 'btce', currency_pair = c('NMC', 'BTC'), action='ticker')}
    ))  
  return(ticker_all)
}



