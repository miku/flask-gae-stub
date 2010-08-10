#!/usr/bin/env bash
#
# Script to update Flask, Werkzeug and Jinja2 sources from PYPI.
#
# 2010-08-10

TMP_DIR=updatetmp
rm -rf $TMP_DIR && mkdir -p $TMP_DIR

FLASK_VERSION=0.6
WERKZEUG_VERSION=0.6.2
JINJA2_VERSION=2.5

# Get flask
# .........

FLASK_DIR=Flask-$FLASK_VERSION
FLASK_DIST=Flask-$FLASK_VERSION.tar.gz
FLASK_ON_PYPI=http://pypi.python.org/packages/source/F/Flask/$FLASK_DIST

curl -o $TMP_DIR/$FLASK_DIST $FLASK_ON_PYPI
cd $TMP_DIR
tar xzf $FLASK_DIST
cd -
cp -r $TMP_DIR/$FLASK_DIR/flask .

# Get Werkzeug
# ............

WERKZEUG_DIR=Werkzeug-$WERKZEUG_VERSION
WERKZEUG_DIST=Werkzeug-$WERKZEUG_VERSION.tar.gz
WERKZEUG_ON_PYPI=http://pypi.python.org/packages/source/W/Werkzeug/$WERKZEUG_DIST

echo $WERKZEUG_ON_PYPI

curl -o $TMP_DIR/$WERKZEUG_DIST $WERKZEUG_ON_PYPI
cd $TMP_DIR
tar xzf $WERKZEUG_DIST
cd -
cp -r $TMP_DIR/$WERKZEUG_DIR/werkzeug .

# Get Jinja2
# ..........

JINJA2_DIR=Jinja2-$JINJA2_VERSION
JINJA2_DIST=Jinja2-$JINJA2_VERSION.tar.gz
JINJA2_ON_PYPI=http://pypi.python.org/packages/source/J/Jinja2/$JINJA2_DIST

curl -o $TMP_DIR/$JINJA2_DIST $JINJA2_ON_PYPI
cd $TMP_DIR
tar xzf $JINJA2_DIST
cd -
cp -r $TMP_DIR/$JINJA2_DIR/jinja2 .

rm -rf $TMP_DIR
