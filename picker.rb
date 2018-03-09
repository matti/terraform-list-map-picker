require 'json'

params = JSON.parse(STDIN.read)

key = params["key"]
list = JSON.parse(params["list"])

values = []
for e in list do
  values << e[key]
end

result = {
  result: values.join(",")
}

puts result.to_json
