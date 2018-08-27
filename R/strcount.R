# This function takes a vector 'search' and then checks for each element of it, how many times it appeared in each element of universe and reports a table as result

strcount <-  function(universe, search){
  v <- attr(gregexpr(search, universe, fixed = T)[[1]], "match.length")
  if (identical(v, -1L)) 0 else length(v)
}