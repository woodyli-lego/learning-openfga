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

## 使用 cli 验证

```bash
# AppAdmin 可以创建 template
fga query check user:eshop-admin can_create_template app:eshop

# SpaceEditor 不能创建 template
fga query check user:toy-store-editor can_create_template app:eshop

# SpaceEditor 可以修改 entry
fga query check user:toy-store-editor can_modify entry:toys-category
```

## 执行单元测试

```bash
fga model test --tests tests.yaml
```
