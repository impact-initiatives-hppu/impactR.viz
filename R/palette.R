#' @title Interpolate a color palette
#'
#' @param palette Character name of a palette in palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param show_palettes Should the ouput be the set of palettes names to pick from? Default to `FALSE`
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @return A color palette
#'
#' @export
palette <- function(palette = "branding_reach", reverse = FALSE, show_palettes = FALSE, ...) {

  pals <- list(
    branding_reach = color_pattern("branding_reach"),
    branding_impact = color_pattern("branding_impact"),
    branding_agora = color_pattern("branding_agora"),
    cat_2 = color("cat_2_1", "cat_2_2"),
    cat_2_light = color_pattern("cat_2_light"),
    cat_2_green = color_pattern("cat_2_green"),
    cat_2_blue = color_pattern("cat_2_blue"),
    cat_5_ibm = color_pattern("cat_5_ibm"),
    cat_3 = color("cat_3_1", "cat_3_2", "cat_3_3"),
    cat_3_tol_high_contrast = color_pattern("cat_3_tol_high_contrast"),
    cat_8_tol_adapted = color_pattern("cat_8_tol_adapted"),
    cat_8_wong = color_pattern("cat_8_wong"),
    cat_3_custom_1 = c("#003F5C", "#58508D", "#FFA600"),
    cat_3_custom_1_na = c("#003F5C", "#58508D", "#FFA600", color("branding_reach_light_grey")),
    cat_4_custom_1 = c("#003F5C", "#7a5195", "#ef5675", "#ffa600"),
    cat_4_custom_1_na = c("#003F5C", "#7a5195", "#ef5675", "#ffa600", color("branding_reach_light_grey")),
    cat_5_custom_1 = c("#003F5C", "#58508d", "#bc5090", "#ff6361", "#ffa600"),
    cat_5_custom_1_na = c("#003F5C", "#58508d", "#bc5090", "#ff6361", "#ffa600", color("branding_reach_light_grey")),
    cat_6_custom_1 = c("#003F5C", "#444e86", "#955196", "#dd5182", "#ff6e54", "#ffa600"),
    cat_6_custom_1_na = c("#003F5C", "#444e86", "#955196", "#dd5182", "#ff6e54", "#ffa600", color("branding_reach_light_grey")),
    quant_2_red = color_pattern("quant_2_red"),
    quant_2_red_na = c(color_pattern("quant_2_red"), color("branding_reach_light_grey")),
    quant_3_red = color_pattern("quant_3_red"),
    quant_3_red_na = c(color_pattern("quant_3_red"), color("branding_reach_light_grey")),
    quant_4_red = color_pattern("quant_4_red"),
    quant_4_red_na = c(color_pattern("quant_4_red"), color("branding_reach_light_grey")),
    quant_5_red = color_pattern("quant_5_red"),
    quant_5_red_na = c(color_pattern("quant_5_red"), color("branding_reach_light_grey")),
    quant_6_red = color_pattern("quant_6_red"),
    quant_6_red_na = c(color_pattern("quant_6_red"), color("branding_reach_light_grey")),
    quant_7_red = color_pattern("quant_7_red"),
    quant_7_red_na = c(color_pattern("quant_7_red"), color("branding_reach_light_grey")),
    quant_2_yellow = color_pattern("quant_2_yellow"),
    quant_2_yellow_na = c(color_pattern("quant_2_yellow"), color("branding_reach_light_grey")),
    quant_3_yellow = color_pattern("quant_3_yellow"),
    quant_3_yellow_na = c(color_pattern("quant_3_yellow"), color("branding_reach_light_grey")),
    quant_4_yellow = color_pattern("quant_4_yellow"),
    quant_4_yellow_na = c(color_pattern("quant_4_yellow"), color("branding_reach_light_grey")),
    quant_5_yellow = color_pattern("quant_5_yellow"),
    quant_5_yellow_na = c(color_pattern("quant_5_yellow"), color("branding_reach_light_grey")),
    quant_6_yellow = color_pattern("quant_6_yellow"),
    quant_6_yellow_na = c(color_pattern("quant_6_yellow"), color("branding_reach_light_grey")),
    quant_7_yellow = color_pattern("quant_7_yellow"),
    quant_7_yellow_na = c(color_pattern("quant_7_yellow"), color("branding_reach_light_grey")),
    quant_2_green = color_pattern("quant_2_green"),
    quant_2_green_na = c(color_pattern("quant_2_green"), color("branding_reach_light_grey")),
    quant_3_green = color_pattern("quant_3_green"),
    quant_3_green_na = c(color_pattern("quant_3_green"), color("branding_reach_light_grey")),
    quant_4_green = color_pattern("quant_4_green"),
    quant_4_green_na = c(color_pattern("quant_4_green"), color("branding_reach_light_grey")),
    quant_5_green = color_pattern("quant_5_green"),
    quant_5_green_na = c(color_pattern("quant_5_green"), color("branding_reach_light_grey")),
    quant_6_green = color_pattern("quant_6_green"),
    quant_6_green_na = c(color_pattern("quant_6_green"), color("branding_reach_light_grey")),
    quant_7_green = color_pattern("quant_7_green"),
    quant_7_green_na = c(color_pattern("quant_7_green"), color("branding_reach_light_grey")),
    quant_2_artichoke = color_pattern("quant_2_artichoke"),
    quant_2_artichoke_na = c(color_pattern("quant_2_artichoke"), color("branding_reach_light_grey")),
    quant_3_artichoke = color_pattern("quant_3_artichoke"),
    quant_3_artichoke_na = c(color_pattern("quant_3_artichoke"), color("branding_reach_light_grey")),
    quant_4_artichoke = color_pattern("quant_4_artichoke"),
    quant_4_artichoke_na = c(color_pattern("quant_4_artichoke"), color("branding_reach_light_grey")),
    quant_5_artichoke = color_pattern("quant_5_artichoke"),
    quant_5_artichoke_na = c(color_pattern("quant_5_artichoke"), color("branding_reach_light_grey")),
    quant_6_artichoke = color_pattern("quant_6_artichoke"),
    quant_6_artichoke_na = c(color_pattern("quant_6_artichoke"), color("branding_reach_light_grey")),
    quant_7_artichoke = color_pattern("quant_7_artichoke"),
    quant_7_artichoke_na = c(color_pattern("quant_7_artichoke"), color("branding_reach_light_grey")),
    quant_2_blue = color_pattern("quant_2_blue"),
    quant_2_blue_na = c(color_pattern("quant_2_blue"), color("branding_reach_light_grey")),
    quant_3_blue = color_pattern("quant_3_blue"),
    quant_3_blue_na = c(color_pattern("quant_3_blue"), color("branding_reach_light_grey")),
    quant_4_blue = color_pattern("quant_4_blue"),
    quant_4_blue_na = c(color_pattern("quant_4_blue"), color("branding_reach_light_grey")),
    quant_5_blue = color_pattern("quant_5_blue"),
    quant_5_blue_na = c(color_pattern("quant_5_blue"), color("branding_reach_light_grey")),
    quant_6_blue = color_pattern("quant_6_blue"),
    quant_6_blue_na = c(color_pattern("quant_6_blue"), color("branding_reach_light_grey")),
    quant_7_blue = color_pattern("quant_7_blue"),
    quant_7_blue_na = c(color_pattern("quant_7_blue"), color("branding_reach_light_grey"))
  )

  if (show_palettes) return(names(pals))

  if (length(palette) != 1) rlang::abort("'palette' can only be of length 1.")

  if (palette %notin% names(pals)) rlang::abort("Please provide an existing name of palette. To show all names, use 'show_palettes = TRUE'.")

  pal <- pals[[palette]]

  if (reverse) pal <- rev(pal)

  return(pal)
}
