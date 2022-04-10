###
 # @Author: Shuangchi He / Yulv
 # @Email: yulvchi@qq.com
 # @Date: 2022-04-09 22:01:30
 # @Motto: Entities should not be multiplied unnecessarily.
 # @LastEditors: Shuangchi He
 # @LastEditTime: 2022-04-11 01:45:17
 # @FilePath: /Search-for-Typos/search_typos.sh
 # @Description: Search for typos in code or text.
### 

target_dir='./'

# -------------------------------------------------------------------------------------------

repeated_words_en=("do" "does" "have" "is" "are" \  # 动词
                  "of" "for" "in" "on" "at" "to" "with" "from" \  # 介词
                  "a" "one"  # 冠词
                  )

for item in ${repeated_words_en[@]}; do
    item2="${item} ${item}"
    echo
    echo "Could the word '${item}' be repeated???"
    grep -r -i -w -n "${item2}" ${target_dir}
done

# -------------------------------------------------------------------------------------------

repeated_words_zh=("的" "是" "不" "就" \
                  "有" "为"  # 可能有“没有有关、因为为了”的例外
                  )  

for item in ${repeated_words_zh[@]}; do
    item2="${item}${item}"
    echo
    echo "Could the word '${item}' be repeated???"
    grep -r -n "${item2}" ${target_dir}
done

# -------------------------------------------------------------------------------------------

typos_en=("modle" \  # typos本身没有释义
         "achive" "attrbute" "recieve" "indicies" "instrution" "occurences" "atleast" "ouput" "retrive"  # 存在网络释义，即不规范用法的
         )

for item in ${typos_en[@]}; do
    echo
    echo "Could the word / string '${item}' be a typos???"
    grep -r -i -n "${item}" ${target_dir}
done
