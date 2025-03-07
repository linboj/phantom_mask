# Phantom Mask

## How to use it?

docker-compose.yml at [here](./docker-compose.yml).

On the local machine, please follow the commands below to build it.

1. Should Install：

    Docker & Docker Compose
    Git

2. Clone：

    ```bash
        git clone --recursive [repository_url]
        cd phantom_mask

    ```

3. Setup require .env following [.env.example](./.env.example)

    ```bash
        cp .env.example .env
        # 編輯 .env 檔案設定必要參數
    ```

4. Startup Docker Compose

  ```bash
    docker-compose up -d
  ```

5. Wait for Application Start because mysql_db need to startup for a whule.
