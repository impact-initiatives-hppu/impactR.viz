#' Scale constructors for fill and colors
#'
#' This function is based on [palette()]. If palette is NULL, the used palette will be magma from gpplot2's viridis scale constructors.
#'
#' @inheritParams palette_gen
#'
#' @param reverse_guide Boolean indicating whether the guide should be reversed.
#' @param ... Additional arguments passed to [ggplot2::discrete_scale()] if discrete or [ggplot2::scale_fill_gradient()] if continuous.
#'
#' @export
scale_color_impact_discrete <- function(palette = "cat_5_ibm", direction = 1, reverse_guide = TRUE, ...) {

  if (!(is.null(palette))) {
    ggplot2::discrete_scale(
      "color",
      palette,
      palette = palette_gen(palette, "discrete", direction),
      guide = ggplot2::guide_legend(
        title.position = "top",
        draw.ulim = TRUE,
        draw.llim = TRUE,
        # ticks.colour = "#F1F3F5",
        reverse = reverse_guide
      ),
      ...
    )
  } else {

    ggplot2::scale_colour_viridis_d(
      direction = direction,
      guide = ggplot2::guide_legend(
        title.position = "top",
        draw.ulim = TRUE,
        draw.llim = TRUE,
        # ticks.colour = "#F1F3F5",
        reverse = reverse_guide
      ),
      ...
    )

  }

}

#' @rdname scale_color_impact_discrete
#'
#' @export
scale_fill_impact_discrete <- function(palette = "cat_5_ibm", direction = 1, reverse_guide = TRUE, ...) {

  if (!(is.null(palette))) {

    ggplot2::discrete_scale(
      "fill",
      palette,
      palette = palette_gen(palette, "discrete", direction),
      guide = ggplot2::guide_legend(
        title.position = "top",
        draw.ulim = TRUE,
        draw.llim = TRUE,
        # ticks.colour = "#F1F3F5",
        reverse = reverse_guide
      ),
      ...
    )
  } else {

    ggplot2::scale_fill_viridis_d(
      direction = direction,
      guide = ggplot2::guide_legend(
        title.position = "top",
        draw.ulim = TRUE,
        draw.llim = TRUE,
        # ticks.colour = "#F1F3F5",
        reverse = reverse_guide
      ),
      ...
    )

  }

}

#' @rdname scale_color_impact_discrete
#'
#' @export
scale_fill_impact_continuous <- function(palette = "quant_7_artichoke", direction = 1, reverse_guide = TRUE, ...) {

  if (!(is.null(palette))) {

    pal <- palette_gen(palette, "continuous", direction)

    ggplot2::scale_fill_gradientn(
      colors = pal(256),
      guide = ggplot2::guide_colorbar(
        title.position = "top",
        draw.ulim = TRUE,
        draw.llim = TRUE,
        # ticks.colour = "#F1F3F5",
        reverse = reverse_guide
      ),
      ...
    )

  } else {

    ggplot2::scale_fill_viridis_c(
      option = "magma",
      guide = ggplot2::guide_colorbar(
        title.position = "top",
        draw.ulim = TRUE,
        draw.llim = TRUE,
        # ticks.colour = "#F1F3F5",
        reverse = reverse_guide
      ),
      ...)

  }

}

#' @rdname scale_color_impact_discrete
#'
#' @export
scale_color_impact_continuous <- function(palette = "quant_7_artichoke", direction = 1, reverse_guide = TRUE, ...) {

  if (!(is.null(palette))) {

    pal <- palette_gen(palette, "continuous", direction)

    ggplot2::scale_fill_gradientn(
      colors = pal(256),
      guide = ggplot2::guide_colorbar(
        title.position = "top",
        draw.ulim = TRUE,
        draw.llim = TRUE,
        # ticks.colour = "#F1F3F5",
        reverse = reverse_guide
      ),
      ...
    )

  } else {

    ggplot2::scale_colour_viridis_c(
      option = "magma",
      guide = ggplot2::guide_colorbar(
        title.position = "top",
        draw.ulim = TRUE,
        draw.llim = TRUE,
        # ticks.colour = "#F1F3F5",
        reverse = reverse_guide
      ),
      ...)

  }

}
