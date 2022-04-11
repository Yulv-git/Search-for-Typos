###
 # @Author: Shuangchi He / Yulv
 # @Email: yulvchi@qq.com
 # @Date: 2022-04-09 22:01:30
 # @Motto: Entities should not be multiplied unnecessarily.
 # @LastEditors: Shuangchi He
 # @LastEditTime: 2022-04-11 11:35:09
 # @FilePath: /Search-for-Typos/search_typos.sh
 # @Description: Search for typos in code or text.
 # Repository: https://github.com/Yulv-git/Search-for-Typos
### 

target_dir="$1"
echo "target_dir: ${target_dir}"


repeated_words_en=("do" "does" "have" "is" "are" \
                  "of" "for" "in" "on" "at" "to" "with" "from" \
                  "a" "an" "the" \
                  "this" \
                  "one"
                  )

for item in ${repeated_words_en[@]}; do
    item2="${item} ${item}"
    echo
    echo "Could the word '${item}' be repeated???"
    grep -r -i -w -n --color=auto "${item2}" ${target_dir}
done


repeated_words_zh=("的" "是" "不" "就" "我" "他" \
                  "为"
                  )  

for item in ${repeated_words_zh[@]}; do
    item2="${item}${item}"
    echo
    echo "Could the character '${item}' be repeated???"
    grep -r -n --color=auto "${item2}" ${target_dir}
done


typos_en=("modle" \
         "achive" "attrbute" "recieve" "indicies" "instrution" "occurences" "atleast" "ouput" "retrive"
         )

for item in ${typos_en[@]}; do
    echo
    echo "Could the word/string ${item} be a typo???"
    grep -r -i -n --color=auto "${item}" ${target_dir}
done
