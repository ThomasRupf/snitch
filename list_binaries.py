import sys
import os
import re
import mimetypes

test_pat = re.compile('test-.*')
testssrinference_pat = re.compile('test-SSRInference-.*')
bench_pat = re.compile('bench-.*')
dataset_pat = re.compile('-.*_DATASET-')
restrict_pat = re.compile('RESTRICT')
dot_pat = re.compile('.*\..*')

dataset_size = {"MINI_DATASET": 0, "SMALL_DATASET": 10, "MEDIUM_DATASET": 20, "LARGE_DATASET": 30, "EXTRALARGE_DATASET": 40}

def filekey(f):
    r = 0
    dataset = dataset_pat.search(f)
    if dataset:
        r += dataset_size[dataset.string[dataset.start()+1:dataset.end()-1]]
    return str(r) + f

def main():
    tests = []
    benchs = []
    files = os.listdir('./hw/system/snitch_cluster/sw/build/SSRInference')
    for f in files:
        if dot_pat.search(f): continue
        if test_pat.match(f) and not testssrinference_pat.match(f): tests.append(f)
        if bench_pat.match(f) and dataset_pat.search(f): benchs.append(f)
    tests.sort()
    benchs.sort(key=filekey)
    for t in tests:
        sys.stdout.write(t + "\n")
    for b in benchs:
        sys.stdout.write(b + "\n")
    sys.stdout.flush()


if __name__ == '__main__':
    main()