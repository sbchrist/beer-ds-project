# beer-ds-project

Below are instructions on how to recreate my answers locally, although the jupyter notebook should render in the browser (but it sometimes can be finicky).  All answers can be found in the jupyter notebook itself. 



## Getting Started

### Prerequisites

First, you'll need Python 3.7. We recommend using `pyenv` to get this (as well as other versions of Python).

Then you'll need Jupyter Notebook. You can find directions on how to get that [here](https://jupyter.org/install). They recommend downloading Anaconda to get it, but we suggest using `pip` if you're already using `pyenv` to manage your python versions.

I used `pipenv` for a virtual environment. You can find instructions on installing that [here](https://pipenv.readthedocs.io/en/latest/install/#installing-pipenv).

Once you've got `pipenv` installed, you can start up the virtual environment using:

```bash
pipenv install
```

Next, activate the Pipenv shell:

```bash
pipenv shell
```

This will spawn a new shell subprocess, which can be deactivated by using `exit`.

One of the required packages you just installed is `ipykernel`. I used this to create a kernel that uses our virtual enivronment for the Jupyter Notebook:

```bash
ipython kernel install --user --name=example-name
```

At this point, you can start jupyter with `jupyter notebook`. When you open a notebook, be sure you're using the kernel you created(example-name).
