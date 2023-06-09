% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_duke.R
\name{theme_duke}
\alias{theme_duke}
\title{Implements theme components.}
\usage{
theme_duke(
  base_size = 11,
  base_family = "",
  base_line_size = base_size/22,
  base_rect_size = base_size/22
)
}
\arguments{
\item{base_size}{the base size}

\item{base_family}{the base family}

\item{base_line_size}{the baseline size}

\item{base_rect_size}{the base rect}
}
\value{
a plot with Duke colors
}
\description{
Defines the overall aesthetic and thematic features of the plot. This
function specifies simple background, grid line, text, and legend arguments
to create minimalist design. Its use is intended for ggplot objects.
}
\examples{

library(ggplot2)
library(palmerpenguins)

# default
p <- ggplot(penguins, aes(x = bill_depth_mm, y = bill_length_mm, color = species)) +
  geom_point() +
  labs(
    title = "Bill length and depth of penguins",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Bill depth (mm)",
    y = "Bill length (mm)",
    color = "Species",
    caption = "Source: palmerpenguins package."
  )
p

# vs. with Duke theme
p +
  theme_duke()

# vs. with Duke theme and scale
p +
  scale_duke_color_discrete() +
  theme_duke()

# with Duke theme, scale, and further customization to theme
p +
  scale_duke_color_discrete() +
  theme_duke() +
  theme(
    plot.title = element_text(color = "red", size = 20),
    plot.background = element_rect(fill = "pink", color = "yellow"),
    panel.grid = element_blank()
  )
}
