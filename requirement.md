# 需求

为下面 headless CMS 设计一个基于 OpenFGA 的访问控制模型。

## 领域对象

- **App**: 代表一个（前端）应用。
- **Space**: 代表一个应用的工作空间，一个应用可以有多个工作空间，可以认为每个空间是应用的一个租户。
- **Template**: 代表内容模板，内容模板属于 App，一个 App 的多个 Space 共享同一组模板。
- **Entry**: 代表内容条目，内容条目属于 Space，且与 Template 关联。一个 App 下不同的 Space，对于同一个 Template 的内容条目可以有不同的内容。
- **User**: 代表 CMS 系统用户，用户身份分为：AppAdmin, SpaceEditor, SpaceViewer。

## 访问控制需求

- App 和 Space 由系统预定义，用户不能创建或删除。
- Template 由所属 App 的 AppAdmin 管理，包括查看，创建，修改和删除。
- Template 可以被所属 App 的所有 Space 的 SpaceEditor 和 SpaceViewer 查看。
- Entry 默认只能被 Template 所属 App 的 AppAdmin 创建，可以指定特定的 Template，对应的 Entry 可以被 Template 所属 App 的所有 Space 的 SpaceEditor 创建。
- Entry 可以被所属 Space 的 SpaceEditor，以及所属 Space 的 App 的 AppAdmin 管理，包括查看和修改。
- Entry 可以被 SpaceViewer, SpaceEditor 和 AppAdmin 查看。
