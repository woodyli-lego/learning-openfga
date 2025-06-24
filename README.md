# Notes

## 启动 OpenFGA

```bash
make infra-start
```

## 安装 OpenFGA CLI

```bash
brew install openfga/tab/fga
```

## 在 .fga.yaml 添加 api-path 和 api-token

```yaml
api-url: http://localhost:28080
api-token: 123456
```

测试连通性：

```bash
fga store list
```

## 创建一个新 Store

```bash
fga store create --name my-store --
```
