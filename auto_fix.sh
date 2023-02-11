###
 # @Author: Shuangchi He / Yulv
 # @Email: yulvchi@qq.com
 # @Date: 2022-06-02 01:35:15
 # @Motto: Entities should not be multiplied unnecessarily.
 # @LastEditors: Shuangchi He
 # @LastEditTime: 2022-06-03 14:06:08
 # @FilePath: /Search-for-Typos/auto_fix.sh
 # @Disclaimer: Use the auto_fix.sh script only when you are very sure that the typo(s) and
 #              target paths you want to modify are accurate and correct. Because batch automatic
 #              modification brings convenience, it may also bring wrong modification.
### 

current_dir=$(cd `dirname $0`; pwd)
target_dir="$1"
echo "target_dir: ${target_dir}"


# auto fix some typos
while read item
do
    item=`echo ${item} | sed 's/\r//'`
    item2=(${item//"-->"/" "})
    item_key=${item2[0]}
    item_value=${item2[1]}

    if [[ ${item_key} =~ "Space=Blank" ]]; then
        item_key=${item_key//"Space=Blank"/" "}
    fi
    if [[ ${item_value} =~ "Space=Blank" ]]; then
        item_value=${item_value//"Space=Blank"/" "}
    fi

    echo "${item_key} --> ${item_value}"
    sed -i "s/${item_key}/${item_value}/g" `egrep "${item_key}" -rl ${target_dir} --exclude-dir=.git`
done < ${current_dir}/typos_lib/auto_fix.txt
