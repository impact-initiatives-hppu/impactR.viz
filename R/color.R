#' Functions to extract IMPACT colors as hex codes
#'
#' [color()] returns the requested columns, returns NA if absent. [color_pattern()] returns all colors that start with the pattern.
#'
#' @param ... Character names of colors. If NULL returns all colors.
#' @param unname Boolean. Should the output vector be unnamed? Default to `TRUE`.
#' @section Naming of colors:
#' * All branding colors start with "branding";
#' * All categorical colors start with "cat_";
#' * All continuous colors start with "quant_";
#'
#' Then, a number indicates the number of colors that belong to the palettes, a string the name of the palette, and, finally, a number the position of the color. E.g., "quant_5_red_4" would be the 4th color of a continuous palettes of 5 colors in the red band. Exception is made for white, light_grey, dark_grey, and black.
#'
#'
#' @return Hex codes named or unnamed.
#'
#' @export
color <- function(..., unname = TRUE) {

  cols <- c(...)

  colors <- c(
    white = "#FFFFFF",
    light_grey = "#E3E3E3",
    dark_grey = "#464647",
    black = "#000000",
    branding_reach_grey = "#58585A",
    branding_reach_red = "#EE5859",
    branding_reach_light_grey = "#C7C8CA",
    branding_reach_beige = "#D2CBB8",
    branding_agora_bordeaux = "#581522",
    branding_agora_light_beige = "#DDD8C4",
    branding_agora_dark_beige = "#B7AD99",
    branding_agora_light_grey  = "#BCB8B1",
    branding_impact_black = "#000000",
    branding_impact_blue = "#315975",
    branding_impact_grey = "#58585A",
    cat_2_1 = "#ffc20a",
    cat_2_2 = "#0c7bdc",
    cat_2_light_1 = "#fefe62",
    cat_2_light_2 = "#d35fb7",
    cat_2_green_1 = "#1aff1a",
    cat_2_green_2 = "#4b0092",
    cat_2_blue_1 = "#1a85ff",
    cat_2_blue_2 = "#d41159",
    cat_5_ibm_1 = "#648fff",
    cat_5_ibm_2 = "#785ef0",
    cat_5_ibm_3 = "#dc267f",
    cat_5_ibm_4 = "#fe6100",
    cat_5_ibm_5 = "#ffb000",
    cat_3_1 = "aquamarine2",
    cat_3_2 = "cornflowerblue",
    cat_3_3 = "brown1",
    cat_3_tol_high_contrast_1 = "#215589",
    cat_3_tol_high_contrast_2 = "#cfaa34",
    cat_3_tol_high_contrast_3 = "#a35364",
    cat_8_tol_adapted_1 = "#332e86",
    cat_8_tol_adapted_2 = "#50504f",
    cat_8_tol_adapted_3 = "#3dab9a",
    cat_8_tol_adapted_4 = "#86ccee",
    cat_8_tol_adapted_5 = "#ddcb77",
    cat_8_tol_adapted_6 = "#ee5859",
    cat_8_tol_adapted_7 = "#aa4599",
    cat_8_tol_adapted_8 = "#721220",
    cat_8_wong_1 = "#000000",
    cat_8_wong_2 = "#e69f00",
    cat_8_wong_3 = "#56b4e9",
    cat_8_wong_4 = "#009e73",
    cat_8_wong_5 = "#f0e442",
    cat_8_wong_6 = "#0072b2",
    cat_8_wong_7 = "#d55e00",
    cat_8_wong_8 = "#cc79a7",
    quant_2_red_1 = "#f6e3e3",
    quant_2_red_2 = "#ee5a59",
    quant_3_red_1 = "#f6e3e3",
    quant_3_red_2 = "#f3b5b6",
    quant_3_red_3 = "#ee5a59",
    quant_4_red_1 = "#f6e3e3",
    quant_4_red_2 = "#f3b5b6",
    quant_4_red_3 = "#ee5a59",
    quant_4_red_4 = "#9d393c",
    quant_5_red_1 = "#f6e3e3",
    quant_5_red_2 = "#f3b5b6",
    quant_5_red_3 = "#ee5a59",
    quant_5_red_4 = "#c0474a",
    quant_5_red_5 = "#792a2e",
    quant_6_red_1 = "#f8f4f4",
    quant_6_red_2 = "#f8d6d6",
    quant_6_red_3 = "#f49695",
    quant_6_red_4 = "#ee5a59",
    quant_6_red_5 = "#c0474a",
    quant_6_red_6 = "#792a2e",
    quant_7_red_1 = "#f8f4f4",
    quant_7_red_2 = "#f8d6d6",
    quant_7_red_3 = "#f49695",
    quant_7_red_4 = "#ee5a59",
    quant_7_red_5 = "#c0474a",
    quant_7_red_6 = "#792a2e",
    quant_7_red_7 = "#471119",
    quant_2_yellow_1 = "#cfc9b7",
    quant_2_yellow_2 = "#a08254",
    quant_3_yellow_1 = "#f4f0e8",
    quant_3_yellow_2 = "#cfc9b7",
    quant_3_yellow_3 = "#a08254",
    quant_4_yellow_1 = "#f4f0e8",
    quant_4_yellow_2 = "#cfc9b7",
    quant_4_yellow_3 = "#b39c6a",
    quant_4_yellow_4 = "#8c673d",
    quant_5_yellow_1 = "#f4f0e8",
    quant_5_yellow_2 = "#cfc9b7",
    quant_5_yellow_3 = "#b39c6a",
    quant_5_yellow_4 = "#997e3d",
    quant_5_yellow_5 = "#8c673d",
    quant_6_yellow_1 = "#f4f0e8",
    quant_6_yellow_2 = "#cfc9b7",
    quant_6_yellow_3 = "#b39c6a",
    quant_6_yellow_4 = "#997e3d",
    quant_6_yellow_5 = "#7f6126",
    quant_6_yellow_6 = "#593d12",
    quant_7_yellow_1 = "#f4f0e8",
    quant_7_yellow_2 = "#cfc9b7",
    quant_7_yellow_3 = "#b39c6a",
    quant_7_yellow_4 = "#997e3d",
    quant_7_yellow_5 = "#7f6126",
    quant_7_yellow_6 = "#65481c",
    quant_7_yellow_7 = "#4b3713",
    quant_2_green_1 = "#cce5c9",
    quant_2_green_2 = "#55a065",
    quant_3_green_1 = "#e6f2e0",
    quant_3_green_2 = "#7ebf85",
    quant_3_green_3 = "#2d8246",
    quant_4_green_1 = "#e6f2e1",
    quant_4_green_2 = "#b0d3ab",
    quant_4_green_3 = "#4bab5e",
    quant_4_green_4 = "#0c592e",
    quant_5_green_1 = "#e6f2e1",
    quant_5_green_2 = "#b0d3ab",
    quant_5_green_3 = "#6bb26a",
    quant_5_green_4 = "#229346",
    quant_5_green_5 = "#0c592e",
    quant_6_green_1 = "#e6f2e0",
    quant_6_green_2 = "#b0d3ab",
    quant_6_green_3 = "#75c376",
    quant_6_green_4 = "#086d38",
    quant_6_green_5 = "#0c592e",
    quant_6_green_6 = "#0d4420",
    quant_7_green_1 = "#fafafa",
    quant_7_green_2 = "#e6f2e0",
    quant_7_green_3 = "#b0d3ab",
    quant_7_green_4 = "#75c376",
    quant_7_green_5 = "#40ab5d",
    quant_7_green_6 = "#086d38",
    quant_7_green_7 = "#0d4420",
    quant_2_artichoke_1 = "#b6c8b1",
    quant_2_artichoke_2 = "#53755f",
    quant_3_artichoke_1 = "#e4f1db",
    quant_3_artichoke_2 = "#89a087",
    quant_3_artichoke_3 = "#455843",
    quant_4_artichoke_1 = "#e4f1db",
    quant_4_artichoke_2 = "#b5ceb2",
    quant_4_artichoke_3 = "#89a087",
    quant_4_artichoke_4 = "#465944",
    quant_5_artichoke_1 = "#e4f1db",
    quant_5_artichoke_2 = "#b5ceb2",
    quant_5_artichoke_3 = "#89a087",
    quant_5_artichoke_4 = "#60755f",
    quant_5_artichoke_5 = "#465944",
    quant_6_artichoke_1 = "#fafafa",
    quant_6_artichoke_2 = "#e4f1db",
    quant_6_artichoke_3 = "#b5ceb2",
    quant_6_artichoke_4 = "#89a087",
    quant_6_artichoke_5 = "#60755f",
    quant_6_artichoke_6 = "#455843",
    quant_7_artichoke_1 = "#fafafa",
    quant_7_artichoke_2 = "#e4f1db",
    quant_7_artichoke_3 = "#b5ceb2",
    quant_7_artichoke_4 = "#9fb89c",
    quant_7_artichoke_5 = "#89a087",
    quant_7_artichoke_6 = "#60755f",
    quant_7_artichoke_7 = "#455843",
    quant_2_blue_1 = "#7cb6c4",
    quant_2_blue_2 = "#286877",
    quant_3_blue_1 = "#b9d7de",
    quant_3_blue_2 = "#5ca4b4",
    quant_3_blue_3 = "#286877",
    quant_4_blue_1 = "#dfecef",
    quant_4_blue_2 = "#8fc1cc",
    quant_4_blue_3 = "#3f96aa",
    quant_4_blue_4 = "#286877",
    quant_5_blue_1 = "#dfecef",
    quant_5_blue_2 = "#8fc1cc",
    quant_5_blue_3 = "#3f96aa",
    quant_5_blue_4 = "#256a7a",
    quant_5_blue_5 = "#0c3842",
    quant_6_blue_1 = "#f4fbfe",
    quant_6_blue_2 = "#cfe4e9",
    quant_6_blue_3 = "#77b2bf",
    quant_6_blue_4 = "#4096aa",
    quant_6_blue_5 = "#256a7a",
    quant_6_blue_6 = "#0c3842",
    quant_7_blue_1 = "#f4fbfe",
    quant_7_blue_2 = "#b3d5de",
    quant_7_blue_3 = "#77b2bf",
    quant_7_blue_4 = "#4096aa",
    quant_7_blue_5 = "#27768a",
    quant_7_blue_6 = "#0c596b",
    quant_7_blue_7 = "#0c3842"
    ####-----
    # - add diverging palettes
  )

  if (is.null(cols)) {
    cols_to_return <- colors
  } else {
    cols_to_return <- colors[cols]
  }

  if (unname) {
    cols_to_return <- unname(cols_to_return)
  }

  return(cols_to_return)
}

#' @rdname color
#'
#' @param pattern Pattern of the start of colors' name.
#'
#' @export
color_pattern <- function(pattern, unname = TRUE){

  col <- color(unname = FALSE)

  col <- col[startsWith(names(col), pattern)]

  if (unname) {
    col <- unname(col)
  }

  return(col)
}
