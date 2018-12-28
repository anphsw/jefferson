#!/usr/bin/env python
# coding=utf-8

from distutils.core import setup

version = '0.3'

setup(
    name='jefferson',
    version=version,
    description='JFFS2 filesystem extraction tool',
    author='Stefan Viehböck',
    url='https://github.com/makefu/jefferson',
    license='MIT',

    install_requires=[
        'cstruct'
    ],
    packages=['jefferson'],
    package_dir={'jefferson': 'src/jefferson'},
    scripts=['src/scripts/jefferson'],
)
