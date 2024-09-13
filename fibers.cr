spawn do
  10.times { puts "Fiber 1" }
end

spawn do
  10.times { puts "Fiber 2" }
end

sleep 1
