# emergency-response

Simulations, Models, and Visualizations of Portland Fire and Rescue data

## Analytics Branch

This branch should contain all analysis to be done on PF&R fire data.  For the
moment, your final results should be in a Jupyter notebook.  As we progress
through the project and have a need to upload results into a table to be served
by an API, we will move that goalpost.

## Environment Variables

To systematize the way we store and access private information like database
passwords, we use a python module called `dotenv`.  To install, simply run

    pip install -U python-dotenv

in your virtual environment or virtualbox.  You can then save environment
variables to be used within a notebook to a file called `.env` (if you have more
than one such file, this process will climb the file tree and process the first
one it finds).  The file should look like this (with redacted values filled):

    # Configuration for accessing the ER fire database
    # These are comments
    erdatabase = fire
    eruser = <redacted>
    erpassword = <redacted>
    erhost = <redacted>
    erport = <redacted>

You can now load these variables into a notebook's environment by calling

    from dotenv import load_dotenv, find_dotenv
    load_dotenv(find_dotenv())

The `os` core module can now be used to pass these variables to a database
connection creation method:

    import os
    conn = psycopg2.connect(database=os.environ.get("erdatabase"),
                            user=os.environ.get("eruser"),
                            password = os.environ.get("erpassword"),
                            host=os.environ.get("erhost"),
                            port=os.environ.get("erport"))
