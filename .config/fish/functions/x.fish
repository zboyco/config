# 一个 fish 函数示例, 用法如下:
function x --description '终端代理开关'
  if set -q https_proxy
    set -g -e https_proxy http_proxy all_proxy
    echo '代理已移除'
  else
    set PROXY 'http://127.0.0.1:7890'
    export https_proxy=$PROXY http_proxy=$PROXY all_proxy=$PROXY
    echo '代理已开启'
  end
end
