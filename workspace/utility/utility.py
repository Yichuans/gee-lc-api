import ee
ee.Initialize()
a = ee.Image('LANDSAT/LC08/C01/T1/LC08_044034_20140318')
a.getMapId()

a.getDownloadURL()

a.select()