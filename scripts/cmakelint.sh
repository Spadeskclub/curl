#!/bin/sh
#***************************************************************************
#                                  _   _ ____  _
#  Project                     ___| | | |  _ \| |
#                             / __| | | | |_) | |
#                            | (__| |_| |  _ <| |___
#                             \___|\___/|_| \_\_____|
#
# Copyright (C) Dan Fandrich, <dan@coneharvesters.com>, et al.
#
# This software is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at https://curl.se/docs/copyright.html.
#
# You may opt to use, copy, modify, merge, publish, distribute and/or sell
# copies of the Software, and permit persons to whom the Software is
# furnished to do so, under the terms of the COPYING file.
#
# This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
# KIND, either express or implied.
#
# SPDX-License-Identifier: curl
#
###########################################################################

# Run cmakelint on the curl source code. cmakelint can be installed from PyPi
# with the command "python3 -m pip install cmakelint".
find . -path ./.git -prune -o -type f \( -name CMake\* -o -name \*.cmake \) \! -name \*.h.cmake \! -name \*.in -print0 | \
xargs -0 cmakelint --spaces=2 --linelength=132 --filter=-whitespace/indent,-convention/filename,-package/stdargs "$@"
