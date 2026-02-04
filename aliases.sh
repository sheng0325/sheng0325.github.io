#!/bin/bash

# Jekyll Docker 便捷命令

# 启动服务器（后台运行）
start() {
    cd "$(dirname "$0")"
    docker-compose up -d
    echo "✅ 服务器已在后台启动"
    echo "🌐 访问地址: http://localhost:4000"
    echo ""
    echo "查看日志: ./aliases.sh logs"
    echo "停止服务器: ./aliases.sh stop"
}

# 停止服务器
stop() {
    cd "$(dirname "$0")"
    docker-compose down
    echo "🛑 服务器已停止"
}

# 重启服务器
restart() {
    cd "$(dirname "$0")"
    docker-compose restart
    echo "🔄 服务器已重启"
}

# 查看日志
logs() {
    cd "$(dirname "$0")"
    docker-compose logs -f --tail 50
}

# 查看状态
status() {
    cd "$(dirname "$0")"
    docker-compose ps
}

# 进入容器 shell
shell() {
    cd "$(dirname "$0")"
    docker-compose exec jekyll /bin/bash
}

# 清理并重新构建
rebuild() {
    cd "$(dirname "$0")"
    docker-compose down
    docker-compose up --build -d
    echo "🔄 服务器已重新构建并启动"
}

# 显示帮助
help() {
    echo "Jekyll Docker 管理命令"
    echo ""
    echo "用法: ./aliases.sh [命令]"
    echo ""
    echo "命令:"
    echo "  start    - 启动服务器（后台运行）"
    echo "  stop     - 停止服务器"
    echo "  restart  - 重启服务器"
    echo "  logs     - 查看日志（实时）"
    echo "  status   - 查看运行状态"
    echo "  shell    - 进入容器 shell"
    echo "  rebuild  - 清理并重新构建"
    echo "  help     - 显示此帮助信息"
    echo ""
    echo "示例:"
    echo "  ./aliases.sh start   # 启动服务器"
    echo "  ./aliases.sh logs    # 查看日志"
    echo "  ./aliases.sh stop    # 停止服务器"
}

# 主函数
case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    restart)
        restart
        ;;
    logs)
        logs
        ;;
    status)
        status
        ;;
    shell)
        shell
        ;;
    rebuild)
        rebuild
        ;;
    help|--help|-h)
        help
        ;;
    *)
        echo "❌ 未知命令: $1"
        echo ""
        help
        exit 1
        ;;
esac
