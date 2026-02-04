FROM jekyll/jekyll:pages

# 设置工作目录
WORKDIR /srv/jekyll

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 4000

# 启动Jekyll服务器
CMD ["jekyll", "serve", "--host", "0.0.0.0", "--port", "4000"]
