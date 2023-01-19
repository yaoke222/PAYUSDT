市面上最好用的USDT自动充值系统PAYUSDT，接口文档

### 下单接口
- api/order/create

|  参数名   | 类型  |  说明  |
|  ----  | ----  |----  |
| order_sn  | string | 商户订单号，唯一 |


### 回调通知
- 在PAYUSDT后台-系统设置-基础配置里面填地址

|  参数名   | 类型  |  说明  |
|  ----  | ----  |----  |
| order_sn  | string | 商户订单号，唯一 |
| cointype  | string | 充值币种，如USDT,TRX,ETH... |
| amount|string| 交易币种数量|
| trade  | int | 1充币；2提币 |
| txid  | string | 交易hash |
| blockHigh  | string | 區塊高度 |
| status |int | 交易状态|
|fee|String | 矿工费|

### 状态码
|  参数名   | 类型  |
|  ----  | ----  |
| 3  | 交易成功 |
| 4  | 交易失敗 |


- 对接以上2个接口即可实现 自动、自由充值！

