###
 # @Author: Shuangchi He / Yulv
 # @Email: yulvchi@qq.com
 # @Date: 2022-04-09 22:01:30
 # @Motto: Entities should not be multiplied unnecessarily.
 # @LastEditors: Shuangchi He
 # @LastEditTime: 2022-04-28 20:22:09
 # @FilePath: /Search-for-Typos/search_typos.sh
 # @Description: Search for typos in code or text.
 # Repository: https://github.com/Yulv-git/Search-for-Typos
### 

target_dir="$1"
echo "target_dir: ${target_dir}"


# repeated English words
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


# repeated Chinese characters
repeated_characters_zh=("的" "是" "不" "就" "我" "他" "为" \
                       "、" "，" "；" "：" "。"
                       )

for item in ${repeated_characters_zh[@]}; do
    item2="${item}${item}"
    echo
    echo "Could the character '${item}' be repeated???"
    grep -r -n --color=auto "${item2}" ${target_dir}
done


# typos of English words/strings
typos_en=("modle" \
         "achive" "attrbute" "recieve" "indicies" "instrution" "occurences" "atleast" "atmost" "ouput" "retrive" \
         "seperate" "humerous" "acheive" "accross" "agressive" "appearence" "enviroment" "fourty" "futher" \
         "goverment" "neccessary" "occured" "succesful" "truely" "expriment" "traing" "chanel" "toturial" \
         "arguement" "begining" "comming" "costom" "probabilites"
         )

for item in ${typos_en[@]}; do
    echo
    echo "Could the word/string '${item}' be a typo???"
    grep -r -i -n --color=auto "${item}" ${target_dir}
done


# wrong Chinese phrases
wrong_phrases_zh=("既使" "即然" \
                 "讲会" "讲按照" "预料库" \
                 "[想向象][^、，；：。\s][一那这]样" ".[副辐付附]图"
                 )

for item in ${wrong_phrases_zh[@]}; do
    echo
    echo "Is this Chinese phrase '${item}' used wrong???"
    egrep -r -n --color=auto "${item}" ${target_dir}
done


# wrong English phrases
wrong_phrases_en=("reasoning_framework"
                 )

for item in ${wrong_phrases_en[@]}; do
    item2=${item//'_'/' '}
    echo "Is this English phrase '${item2}' used wrong???"
    grep -r -i -w -n --color=auto "${item2}" ${target_dir}
done
