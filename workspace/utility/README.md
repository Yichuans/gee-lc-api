# Google Earth Engine API notes

[Google Earth Engine API](https://developers.google.com/earth-engine)

## Deferred execution

Being lazy is a good thing for efficiency

## Scale

Image pyramids are drawn in but not the native pixels

- **Continuous values**: the mean of pixels at the next lower level (an average of the 2x2=4 pixels)
- **Discrete values**: pixel value of the top left pixel (a sample of 2x2=4 pixels)
- the lowest level of the image pyramid represetns image data native resolution, when it ingested to Earth Engine
- the data are aggregated until the entire image fits within a 256x256 pixel tile (zoom level 0)

The number of tiles of a lower zoom level is **four** times the number of the current zoom level. Tile width in longitude degree on the other hand is **half** of that of the current level.

Unlike other GIS and image processing platforms, the scale of analysis is determined from the **output**, rather than the input, when you make a request for results.

## Projections

Uses web mercator - uses speherical development of ellipsoidal coordinates. Relative to WGS84 + World Mercator (CRS 3395) errors of 0.7 percentage in scale and differences in northing of up to 43 km in the map may arise. More on [EPSG:3857](http://epsg.io/3857)

## Other things to caution

- `getInfo()` is synchronous, blocking until the result is received.
- don't use `project()` if not needed