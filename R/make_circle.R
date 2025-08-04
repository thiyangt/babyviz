#'
#'
#'
#'
make_circle <- function(center = c(0, 0), n_points = 5,
                      fill.col.shape="#FFFFFF", outline.col.shape="black", linewidth=2,
                      fill.col.bg="black"){
  circle <- data.frame(
    x = cos(seq(0, 2 * pi, length.out = 500)),
    y = sin(seq(0, 2 * pi, length.out = 500))
  )

  # Plot the circle
  ggplot(circle, aes(x, y)) +
    geom_polygon(fill = fill.col.shape, color = "white") +
    coord_fixed() +
    theme_void() +
    theme(
      plot.background = element_rect(fill = fill.col.bg, color = NA),
      plot.margin = margin(20, 20, 20, 20)
    )
}

