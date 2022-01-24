#!/bin/ruby

require 'uri'  
require 'net/http'  

def req(website, wd)
    url = (website + wd)
    res = Net::HTTP.get_response(URI(url))  
    code = res.code.to_i
    return code
end