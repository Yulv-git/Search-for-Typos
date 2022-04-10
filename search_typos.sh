###
 # @Author: Shuangchi He / Yulv
 # @Email: yulvchi@qq.com
 # @Date: 2022-04-09 22:01:30
 # @Motto: Entities should not be multiplied unnecessarily.
 # @LastEditors: Shuangchi He
 # @LastEditTime: 2022-04-10 21:40:07
 # @FilePath: /AI_Assistant/search_typos.sh
 # @Description: Search for typos in code or text.
### 

grep -r -i -w -n "do do" ./
grep -r -i -w -n "does does" ./
grep -r -i -w -n "have have" ./
grep -r -i -w -n "is is" ./
grep -r -i -w -n "are are" ./

grep -r -i -w -n "of of" ./
grep -r -i -w -n "for for" ./
grep -r -i -w -n "in in" ./
grep -r -i -w -n "on on" ./
grep -r -i -w -n "at at" ./
grep -r -i -w -n "to to" ./
grep -r -i -w -n "with with" ./
grep -r -i -w -n "from from" ./

grep -r -i -w -n "a a" ./
grep -r -i -w -n "one one" ./

grep -r -i -n "modle" ./  # model, module
grep -r -i -n "achive" ./  # archive, achieve
grep -r -i -n "attrbute" ./  # attribute
grep -r -i -n "recieve" ./  # receive
grep -r -i -n "indicies" ./  # indices
grep -r -i -n "instrution" ./  # instruction
grep -r -i -n "occurences" ./  # occurrences
grep -r -i -n "atleast" ./  # at least
grep -r -i -n "ouput" ./  # outputs
grep -r -i -n "retrive" ./  # retrieve

grep -r -n "的的" ./
