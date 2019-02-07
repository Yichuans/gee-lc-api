## Description

A prototype API using the Google Earth Engine to retrieve land cover information.

This is a place holder for exploring functionality of the [Google Earth Engine](https://earthengine.google.com) using [Jupyter notebook](https://jupyter.org).

## Thinking

TBD


## Implementation

1. exploring and prototyping GEE functionalities

2. build utility wrappers around the above

3. package using `flask` (a Python mirco web framework or others?) to build APIs and expose (there are [a lot of examples](https://github.com/google/earthengine-api/tree/master/demos). A Google service account (?) is needed...

4. demo usage of the API: many nano examples that use these APIs to solve real (perhaps trivial) problems


## Quick start

Install `docker`.

Build the image, see details in the `dockerfile`.

`docker build -t gee:latest .`

Run the container
`docker run --name "gee" -it -p "127.0.0.1:8888:8888" -v ~{local work path}/workspace:/app gee`

Once this is done, you can open up your browser and visit `127.0.0.1:8888`. This will open the Jupyter notebook. You might need to copy and paste the token from the console to the browser the first time.

Next you'll need to authorise the Google Earth Engine, which is currently open to trusted testers only. You can consult [this notebook](https://github.com/google/earthengine-api/blob/master/python/examples/ipynb/authorize_notebook_server.ipynb) for more information.

More information on using `docker` and the earth engine can be found on [Google Earth Engine's Python API quick start](https://developers.google.com/earth-engine/python_install-datalab-local).


TBD



