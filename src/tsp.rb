def tsp(graph)
  n = graph.size
  all_visited = (1 << n) - 1

  dp = Array.new(1 << n) { Array.new(n, Float::INFINITY) }
  dp[1][0] = 0  

  (1 << n).times do |mask|
    n.times do |u|
      next if (mask & (1 << u)).zero?

      n.times do |v|
        next if (mask & (1 << v)) != 0
        next if graph[u][v] == Float::INFINITY

        new_mask = mask | (1 << v)
        dp[new_mask][v] = [dp[new_mask][v], dp[mask][u] + graph[u][v]].min
      end
    end
  end

  # Kembali ke node 0
  min_cost = Float::INFINITY
  n.times do |i|
    next if graph[i][0] == Float::INFINITY
    min_cost = [min_cost, dp[all_visited][i] + graph[i][0]].min
  end

  min_cost
end

# Contoh penggunaan
# Matriks bobot (INF berarti tidak ada jalur)
INF = Float::INFINITY
graph = [
  [INF, 10, 15, 20],
  [10, INF, 35, 25],
  [15, 35, INF, 30],
  [20, 25, 30, INF]
]

puts "Minimum tour cost: #{tsp(graph)}"
