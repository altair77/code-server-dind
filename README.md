# code-server Docker in Docker

Docker in Dockerを利用できるcode-serverを構築します。

# 使い方

1. 以下のコマンドを実行します
    ```sh
    docker network create web_nw
    docker-compose up -d
    ```
1. <http://localhost:8080>にアクセスしてください。
