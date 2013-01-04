#!/bin/sh
echo install chef...
gem i chef --no-ri --no-rdoc
knife configure
gem i knife-solo --no-ri --no-rdoc
