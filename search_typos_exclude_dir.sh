### 
 # @Author: Shuangchi He / Yulv
 # @Email: yulvchi@qq.com
 # @Date: 2022-04-30 21:40:21
 # @Motto: Entities should not be multiplied unnecessarily.
 # @LastEditors: Shuangchi He
 # @LastEditTime: 2022-05-02 22:27:02
 # @FilePath: /Search-for-Typos/search_typos_exclude_dir.sh
 # @Description: Search for typos in code or text.
 # Repository: https://github.com/Yulv-git/Search-for-Typos
### 

target_dir="$1"
exlude_dir="$2"

echo "target_dir: ${target_dir}"
echo "exlude_dir: ${exlude_dir}"


# repeated English words
while read item
do
    item2="${item} ${item}"
    echo
    echo "Could the word '${item}' be repeated???"
    grep -r -i -w -n --color=auto "${item2}" ${target_dir} --exclude-dir=${exlude_dir}
done < ./typos_lib/repeated_English_words.txt


# repeated Chinese characters
while read item
do
    item2="${item}${item}"
    echo
    echo "Could the character '${item}' be repeated???"
    grep -r -n --color=auto "${item2}" ${target_dir} --exclude-dir=${exlude_dir}
done < ./typos_lib/repeated_Chinese_characters.txt

# typos of English words/strings
while read item
do
    echo
    echo "Could the word/string '${item}' be a typo???"
    grep -r -i -n --color=auto "${item}" ${target_dir} --exclude-dir=${exlude_dir}
done < ./typos_lib/typos_English_words_strings.txt


# wrong Chinese phrases
while read item
do
    echo
    echo "Is this Chinese phrase '${item}' used wrong???"
    egrep -r -n --color=auto "${item}" ${target_dir} --exclude-dir=${exlude_dir}
done < ./typos_lib/wrong_Chinese_phrases.txt


# wrong English phrases
while read item
do
    item2=${item//'_'/' '}
    echo "Is this English phrase '${item2}' used wrong???"
    grep -r -i -w -n --color=auto "${item2}" ${target_dir} --exclude-dir=${exlude_dir}
done < ./typos_lib/wrong_English_phrases.txt
