#!/bin/bash

echo "🚀 Starting Jekyll development server..."
echo "📦 Using Docker to run the site"
echo ""
echo "Once started, visit: http://localhost:4000"
echo "Press Ctrl+C to stop the server"
echo ""

# 停止并删除旧容器
docker-compose down 2>/dev/null

# 启动新容器
docker-compose up
