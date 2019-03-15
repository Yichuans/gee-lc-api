# Google Earth Engine API land cover wrapper

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

```bash
docker build -t gee:latest .
```

Run the container in Mac/Linux host

```bash
docker run --name "gee" -it -p "127.0.0.1:8888:8888" -v ./workspace:/app gee
```

Run the container in windows host

```bash
docker run --name "gee" -it -p "127.0.0.1:8888:8888" -v %cd%/workspace:/app gee
```

NB: Windows folder mount may stop working when your Active Directory password is reset - you will need to re-authorise the drive in which the folder is found, in the docker `settings\shared drives`

Once this is done, you can open up your browser and visit `127.0.0.1:8888`. This will open the Jupyter notebook. You might need to copy and paste the token from the console to the browser the first time.

Next you'll need to authorise the Google Earth Engine, which is currently open to trusted testers only. You can consult [this notebook](https://github.com/google/earthengine-api/blob/master/python/examples/ipynb/authorize_notebook_server.ipynb) for more information.
Please note that you would also need to register a [Google Earth Engine account](https://code.earthengine.google.com/).

More information on using `docker` and the earth engine can be found on [Google Earth Engine's Python API quick start](https://developers.google.com/earth-engine/python_install-datalab-local).

## Minimal Python installation

In cases where a Python environment is required for testing purposes or a remote intepretor (such as VS code) cannot be used to connect the Python environment within a docker container for development, please follow the below steps to install various libraries

```bash
pip install google-api-python-client
pip install earthengine-api
pip install pyCrypto

# Despite `oauth2client` being phased out, it is still required for `ee` to work.
pip install --upgrade oauth2client.
```

After this is done, in the console

```bash
earthengine authenticate
```

for authorization token.

After that, check if you are authorized

```bash
python -c "import ee; ee.Initialize()"
```

If there is no error, you are ready to run `ee` in the Python environment.