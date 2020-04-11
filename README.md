# 🚀 Webhook Action

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

A Github Action for sending data to an endpoint

Supports all [workflow event types](https://developer.github.com/webhooks/#events)

<hr/>

## Usage
Sending a body of data:

```yml
- name: Webhook
  uses: dereknguyen269/webhook-action@master
  env:
    WEBHOOK_URL: ${{ secrets.WEBHOOK_URL }}
    WEBHOOK_DATA: '{"app": "HelloWorld", "version": "1.1.1"}'
```

### Arguments
* ```yml
  WEBHOOK_DATA: '{"app": "HelloWorld", "version": "1.1.1"}'
  ```
  
### You can use like ENV:

* ```yml
  WEBHOOK_DATA: ${{ secrets.WEBHOOK_DATA }}
  ```

### Environment

The action is expecting a single environment variable of your data. This can be pre-encoded json string, or just a message. Format it to how your API is expecting.

* **`WEBHOOK_URL`** (**required**): This is the webhook url to send the payload to.

## Issues

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.
