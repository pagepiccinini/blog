library(ggmap)

us <- c(left = -125, bottom = 25.75, right = -67, top = 49)
map <- get_stamenmap(us, zoom = 5, maptype = "toner-lite")
ggmap(map)


downtown <- subset(crime,
                   -95.39681 <= lon & lon <= -95.34188 &
                     29.73631 <= lat & lat <=  29.78400
)

qmplot(lon, lat, data = downtown, maptype = "toner-background", color = I("red"))

europe <- c(left = -12, bottom = 35, right = 30, top = 63)
map <- get_stamenmap(europe, zoom = 5, maptype = "toner-lite")
ggmap(map)

france <- c(left = -5, bottom = 42, right = 10, top = 52)
map <- get_stamenmap(france, zoom = 5, maptype = "toner-lite")
ggmap(map)

map = get_googlemap(center = "Paris", maptype = "roadmap", markers = paris_markers)

ggmap(map)