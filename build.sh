#!/bin/sh

javac -d build src/*.java
cp src/manifest.mf build
cd build;
jar cvfm ../RegionTool.jar manifest.mf *.class
