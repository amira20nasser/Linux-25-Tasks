grep "https:\/\/[[:print:]]\+\.[[:alnum:]]\+\(\/[[:alnum:]]\+\)\?"  -o data.txt
grep "\(http://\|https://\|www.\)\([[:alnum:]]\|[[:alnum:]./-]\)\+"  -o data.txt
grep "\(+\|0\)\([[:digit:]]\)\+" -o data.txt
grep "\([[:digit:]]\+\.\)\+[[:digit:]]\+" -o data.txt
