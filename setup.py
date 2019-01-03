
import os

from setuptools import setup, find_packages


def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(
    name='pysolve3',
<<<<<<< HEAD
    version='0.1.1.2',
    packages=find_packages(),
    install_requires=['sympy==1.1', 'numpy'],
    license='MIT',
    author='Gabriel Petrini da Silveira',
    author_email='gpetrinidasilveira@gmail.com',
=======
    version='0.1.1',
    packages=find_packages(),
    install_requires=['sympy==1.1', 'numpy'],
    license='MIT',
    author=['Kenn Takara', 'Gabriel Petrini da Silveira'],
    author_email=['kenn.takara@outlook.com', 'gpetrinidasilveira@gmail.com'],
>>>>>>> d65c932ea8921bbef93031262ddd6734b5d9d625
    classifiers={
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Developers',
        'Intended Audience :: Science/Research',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3.7',
        'Topic :: Scientific/Engineering :: Mathematics',
    },
    url='https://github.com/gpetrini/pysolve3',
    long_description=read('README.rst'),
    description='A simple interface for solving systems of linear equations',
)
