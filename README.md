# Notes

## 启动 OpenFGA

```bash
make infra-start
```

## 安装 OpenFGA CLI

```bash
brew install openfga/tab/fga
```

## 创建配置文件

```bash
cp .fga.yaml.example .fga.yaml
```

测试连通性：

```bash
fga store list
```

## 创建 store

```bash
fga store create --name my-store
```

把 `resp.store.id` 的值填入 `.fga.yaml` 中的 `store_id` 字段。

## 创建 model

```bash
fga model write --file model.fga
```

把 `resp.authorization_model_id` 的值填入 `.fga.yaml` 中的 `model_id` 字段。

## 创建 tupple

```bash
fga tuple write --file tuples.yaml
```



