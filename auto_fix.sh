###
 # @Author: Shuangchi He / Yulv
 # @Email: yulvchi@qq.com
 # @Date: 2022-06-02 01:35:15
 # @Motto: Entities should not be multiplied unnecessarily.
 # @LastEditors: Shuangchi He
 # @LastEditTime: 2022-06-02 20:40:55
 # @FilePath: /Search-for-Typos/auto_fix.sh
 # @Description: Modify here please
### 

current_dir=$(cd `dirname $0`; pwd)
target_dir="$1"
echo "target_dir: ${target_dir}"


# auto fix some typos
while read item
do
    item2=(${item//'-->'/' '})
    item_key=${item2[0]}
    item_value=${item2[1]}
    echo "${item_key} --> ${item_value}"
    sed -i "s/${item_key}/${item_value}/g" `grep ${item_key} -rl ${target_dir} --exclude-dir=.git`
done < ${current_dir}/typos_lib/auto_fix.txt
