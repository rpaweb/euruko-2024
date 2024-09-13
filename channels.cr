# Create a channel to synchronize fiber completion
channel = Channel(Int32).new

spawn do
  10.times { puts "Fiber 1" }
  channel.send(1)  # Notify that this fiber has completed
end

spawn do
  10.times { puts "Fiber 2" }
  channel.send(1)  # Notify that this fiber has completed
end

# Wait for both fibers to complete
2.times { channel.receive }
