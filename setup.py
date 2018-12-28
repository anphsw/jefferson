#!/usr/bin/env python
# coding=utf-8

import setuptools

version = '0.3'

setuptools.setup(
    name='jefferson',
    version=version,
    description='JFFS2 filesystem extraction tool',
    author='Stefan Viehböck',
    url='https://github.com/makefu/jefferson',
    license='MIT',

    install_requires=[
        'cstruct',
        'python-lzo'
    ],
    packages=['jefferson'],
    package_dir={'jefferson': 'src/jefferson'},
    scripts=['src/scripts/jefferson'],
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
)
