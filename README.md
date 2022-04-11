<!--
 * @Author: Shuangchi He / Yulv
 * @Email: yulvchi@qq.com
 * @Date: 2022-04-10 23:50:20
 * @Motto: Entities should not be multiplied unnecessarily.
 * @LastEditors: Shuangchi He
 * @LastEditTime: 2022-04-11 23:46:59
 * @FilePath: /Search-for-Typos/README.md
 * @Description: Search for typos in code or text.
 * Repository: https://github.com/Yulv-git/Search-for-Typos
-->

<h1><center> Search for Typos </h1></center>

    Search for typos in code or text.

---

- [1. Features](#1-features)
- [2. Using](#2-using)
- [3. Search Results](#3-search-results)

---

# 1. Features

Currently, only some typos are supported. Also, binary text are not supported.

- repeated English words
- repeated Chinese characters
- typos of English words/strings
- wrong Chinese phrases
- wrong English phrases

# 2. Using

Search all text under the specified directory and its subdirectories for typos.

``` bash
bash ./search_typos.sh ./
```

# 3. Search Results

Some examples of search results are as follows:

![typos_show1](./typos_show/typos_show1.png)
![typos_show2](./typos_show/typos_show2.png)
![typos_show3](./typos_show/typos_show3.png)
