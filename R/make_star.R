#'
#'
#'
#'
make_star <- function(center = c(0, 0), radius1 = 1, radius2 = 0.4, n_points = 5,
                      fill.col.shape="#FFFFFF", outline.col.shape="black", linewidth=2,
                      fill.col.bg="black"){
  # coordinates to create a star
  angles <- seq(0, 2 * pi, length.out = 2 * n_points + 1)
  radii <- rep(c(radius1, radius2), length.out = length(angles))
  x <- center[1] + radii * cos(angles)
  y <- center[2] + radii * sin(angles)
  star_df <- data.frame(x, y)

  # Plot the star
  ggplot(star_df, aes(x, y)) +
    geom_polygon(fill = fill.col.shape, color = outline.col.shape, linewidth = linewidth) +
    coord_fixed() +
    theme_void() +
    theme(
      plot.background = element_rect(fill = fill.col.bg, color = NA),
      plot.margin = margin(30, 30, 30, 30)
    )
}

