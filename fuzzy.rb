class Fuzzy
  def call env
    [200, {"Content-Type" => "text/html"}, ["Hello, Fuzzy\n"]] 
  end
end
