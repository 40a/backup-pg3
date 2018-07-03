#!/bin/sh
aws s3 cp $1 s3://$BUCKET && rm $1
