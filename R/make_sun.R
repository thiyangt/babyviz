#'
#'
#'
#'
make_sun <- function(){

# Sun core (circle)
circle <- data.frame(
  x = cos(seq(0, 2 * pi, length.out = 100)),
  y = sin(seq(0, 2 * pi, length.out = 100))
)

# Rays
n_rays <- 12
angles <- seq(0, 2 * pi, length.out = n_rays + 1)[-1]
rays <- data.frame(
  x = 0, y = 0,
  xend = 1.5 * cos(angles),
  yend = 1.5 * sin(angles)
)

# Plot the sun
ggplot() +
  geom_segment(data = rays, aes(x = x, y = y, xend = xend, yend = yend),
               linewidth = 2, color = "orange") +
  geom_polygon(data = circle, aes(x, y), fill = "yellow", color = "orange", linewidth = 2) +
  coord_fixed() +
  theme_void() +
  theme(
    plot.background = element_rect(fill = "skyblue", color = NA),
    plot.margin = margin(30, 30, 30, 30)
  )
}
