#!/usr/bin/env python3
from setuptools import find_packages, setup

setup(
    name="crawl-cpo-archiver",
    version="0.9",
    description="Tool to incrementally archive morgue and RC files from crawl.project357.org",
    author="Alexei Robyn",
    author_email="shados@shados.net",
    packages=find_packages("src"),
    package_dir={"": "src"},
    scripts=["src/bin/crawl-cpo-archiver"],
    zip_safe=False,
    # setup_requires=["pytest-runner"],
    # tests_require=["pytest", "pytest-mock"],
)
