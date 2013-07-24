import os
from setuptools import setup


VERSION='1.0.0'


# Install Bash completion script only if installation is run as root
if os.geteuid() != 0:
    data_files = []
else:
    data_files = [('/etc/bash_completion.d', ['pick-from.sh'])]


setup(
    name='pick-from',
    version=VERSION,
    author='Matthias Vogelgesang',
    author_email='matthias.vogelgesang@gmail.com',
    license='BSD',
    scripts=['pick-from'],
    data_files=data_files,
    description="Text user interface for git cherry-pick",
    long_description=open('README.md').read(),
    install_requires=['urwid']
)
