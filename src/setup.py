# Contents of coolmath/setup.py:

from setuptools import setup, find_packages

setup(
    name="DTWMorrisGSA",
    version="0.1.1",
    packages=find_packages(),
    install_requires=["fastdtw >= 0.3.4","scipy >= 1.13.1",],
    author="Dhan Fortela",
    author_email="dhanlord.fortela@louisiana.edu",
    description="DTWMorrisGSA: Dynamic Time Warping (DTW)-based Morris' Method of Elementary Effects.",
    long_description=open("README.md").read(),
    long_description_content_type="text/markdown",
    classifiers=[
            "Development Status :: 3 - Alpha",
            "Intended Audience :: Education",
            "Programming Language :: Python :: 3",
            "Operating System :: MacOS :: MacOS X",
            "Operating System :: Microsoft :: Windows",
    ],
    extras_require = {"dev": ["pytest>=7.0", "twine>=4.0.2"],
                      }
)
