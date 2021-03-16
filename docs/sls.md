
```

* and severity:ERROR and not exception :"" and not exception: "com.wjh.wms.core.exception.BusinessException" and not exception: "Deadlock" and not exception: "com.wjh.auth.exception.ErrorCodeException" and not exception: "com.wjh.custshop.common.exception.ErrorCodeException" and not exception: "com.alibaba.nacos.client.config.http.ServerHttpAgent.httpPost" and not exception: 404 and not exception: "com.wjh.delivery.common.exception.ErrorCodeException" and not exception: "com.wjh.vendor.common.exception.ErrorCodeException" | SELECT service, count(*) AS exception_count GROUP BY service order by exception_count desc

```

固定间隔1分钟

service!=""



http://yaucva.natappfree.cc/handle_sls_alarm?api_token=1&is_at=0

POST

${Results}


cron    0 0 9,14,18 * *


