#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
source $baseDir/localrc
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/../app
# THEANO_FLAGS="mode=FAST_RUN,device=gpu,floatX=float32" python2 nndial.py -config config/tracker.cfg -mode train
THEANO_FLAGS="optimizer=fast_compile,device=cpu,floatX=float32" python2 nndial.py -config config/tracker.cfg -mode train