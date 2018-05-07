#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
dynetSeed=123321889
dynetMem=1024 # MB
outdir=$baseDir/../../save/bmstparser
trainData=$baseDir/../../data/CDT/dependency/CDT.dev.conllu
testData=$baseDir/../../data/CDT/dependency/CDT.test.conllu
epochs=30
lstmdims=100
lstmlayers=2
embedding=$baseDir/../../data/word2vec/news.w2v.vectors

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/..
python src/parser.py \
    --dynet-seed $dynetSeed \
    --dynet-mem $dynetMem \
    --outdir $outdir \
    --train $trainData \
    --dev $testData \
    --epochs $epochs \
    --lstmdims $lstmdims \
    --lstmlayers $lstmlayers \
    --extrn $embedding \
    --bibi-lstm \
