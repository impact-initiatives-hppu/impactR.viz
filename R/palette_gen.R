#' Generate color palettes
#'
#' [palette_gen()] generates a color palette and let you choose whether continuous or discrete. [palette_gen_discrete()] and [palette_gen_continuous()] generates respectively discrete and continuous palettes.
#'
#' @param palette Palette name from [palette()].
#' @param type "discrete" or "continuous".
#' @param direction 1 or -1; should the order of colors be reversed?
#' @param ... Additional arguments to pass to [colorRampPalette()] when type is "continuous".
#'
#' @export
palette_gen <- function(palette, type, direction = 1, ...){

  if (type %notin% c("discrete", "continuous")) rlang::abort("'type' must be discrete or continuous.")

  if (type == "discrete") return(palette_gen_discrete(palette = palette, direction = direction))

  if (type == "continuous") return(palette_gen_continuous(palette = palette, direction = direction, ...))
}


#' @rdname palette_gen
#'
#' @export
palette_gen_discrete <- function(palette = "branding_reach", direction = 1) {

  if (abs(direction) != 1) rlang::abort("Direction must be either 1 or -1.")

  pal <- palette(palette)

  f <- function(n) {
    if (is.null(n))  n <- length(pal)

    if (n > length(pal)) rlang::warn("Not enough colors in this palette!")

    pal <- if (direction == 1) pal else rev(pal)

    pal <- pal[1:n]

    return(pal)
  }

  return(f)
}

#' @rdname palette_gen
#'
#' @export
palette_gen_continuous <- function(palette = "quant_7_artichoke", direction = 1, ...) {

  if (abs(direction) != 1) rlang::abort("Direction must be either 1 or -1.")

  pal <- palette(palette)

  pal <- if (direction == 1) pal else rev(pal)

  grDevices::colorRampPalette(pal, ...)

}
