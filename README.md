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
variables to be used within a notebook to a file called `file.env` *anywhere on 
your filesystem* (`file` can be anything, including blank).  The file should
look something like this:

    # Configuration for accessing the ER fire database
    # These are comments
    erdatabase = fire
    eruser = <redacted>
    erpassword = <redacted>
    erhost = <redacted>
    erport = <redacted>

You can now load these variables into a notebook's environment by calling

    from dotenv import load_dotenv, find_dotenv
    load_dotenv(find_dotenv(file))

The `os` core module can now be used to pass these variables to a database
connection creation method:

    import os
    conn = psycopg2.connect(database=os.environ.get("database"),
                            user=os.environ.get("user"), 
                            password = os.environ.get("password"), 
                            host=os.environ.get("host"),
                            port=os.environ.get("port"))

