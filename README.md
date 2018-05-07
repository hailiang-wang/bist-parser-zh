# 依存关系分析
使用神经网络训练依存关系分析模型

[项目继承自bist-parser](./bist-parser.README.md)

## deps
```
python2.7
pip
```

## install
```
pip install -f ./requirements.txt
```

## train
Transition-based Parsing
```
./barchybrid/admin/train.sh
```

Graph-based Parsing
```
./bmstparser/admin/train.sh
```

## 语料
格式 CoNLL-u format，进一步参考[text-dependency-parser](https://github.com/Samurais/text-dependency-parser).
获取语料 [参考](https://github.com/Samurais/text-dependency-parser/issues/2).
