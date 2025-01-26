mkdir git_started
mkdir .git
mkdir -p .git/objects .git/refs/heads
touch .git/HEAD
echo "ref: refs/heads/main" > .git/HEAD

# git add
# first getting the hashing SHA1 of blob and write it in hash-object
touch hello.txt
echo "Hello, Git!" > hello.txt
git hash-object -w hello.txt
# adding the newfile to stage area
git update-index --add --cacheinfo 100644 670a245535fe6316eb2316c1103b1a88bb519334 hello.txt


# git commit
# create tree
git write-tree
git commit-tree d3ec8a0f5950fb1f73ce0d1ed55cd6fa7afcdeb9 -m "greatest commit ever"
echo "89a6ff74bbaafef606702f02a54bdb08137f6e88" > .git/refs/heads/main
# git tag
git tag V1 89a6ff74bbaafef606702f02a54bdb08137f6e88
