
import os

from setuptools import setup, find_packages


def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(
    name='pysolve3',
    version='0.1.5',
    packages=find_packages(),
    install_requires=['sympy>=1.4', 'numpy', 'pandas'],
    license='MIT',
    author='Gabriel Petrini da Silveira',
    author_email='gpetrinidasilveira@gmail.com',
    url='https://github.com/gpetrini/pysolve3',
    long_description=read('README.rst'),
    description='A simple interface for solving systems of linear equations',
)
