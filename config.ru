# best_quotes/config.ru
run proc {
  [200, {'Content-Type' => 'text/html'},
 ["Hello, world!"]]
}
