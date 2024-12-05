#' Create n items of the "FizzBuzz" series.
#'
#' The FizzBuzz series replaces all multiples of 3 with "Fizz"
#' and all multiples of 5 with "Buzz", and multiples of both with
#' "Fizz-Buzz". All other integers remain as-is in a list.
#'
#' @param n A non-zero positive integer representing the number of items to return
#' @return A vector of integers and strings following the rules of the
#' "FizzBuzz" series
#' @examples
#' fizz_buzz(5)
#' fizz_buzz(22)
#' @export
fizz_buzz <- function(n) {
    # ensure n is not negative, zero, or infinite
    if (n <= 0 || is.infinite(n)) {
        stop("n should not be negative, zero, or infinite")
    }

    # init output var
    output <- NULL

    # loop through numbers 1 through arg n
    for (i in 1:n) {
        if (i %% 15 == 0) {output[i] = "Fizz-Buzz"}
        else if (i %% 5 == 0) {output[i] = "Buzz"}
        else if (i %% 3 == 0) {output[i] = "Fizz"}
        else {output[i] = i}
    }

    return(output)
}
