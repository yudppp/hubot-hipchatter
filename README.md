# hubot-hipchatter

hipchat api wrapping hubot script.
[wip]supported by hipchat v2 api.

## How to Use

 1. install hubot and hubot-hipchat.
 see https://github.com/hipchat/hubot-hipchat#the-i-do-it-myself-way

 2. install hubot-hipchatter.
 ```
 $ [wip] npm install hubot-hipchatter
 ```

 3. Running locally.
 ```
  #!/bin/bash
  export HUBOT_HIPCHAT_JID="..."
  export HUBOT_HIPCHAT_PASSWORD="..."
  export HUBOT_HIPCHAT_TOKEN="..."
  export HUBOT_HIPCHAT_API_ROOT="..."

  bin/hubot --adapter hipchat
```

## TODO

- [ ] update_room
- [ ] create_room
- [ ] delete_room
- [ ] rooms
- [x] get_room
- [x] add_member
- [x] delete_member
- [x] invite_member
- [ ] history
- [ ] users
- [ ] view_user
- [ ] update_user
- [ ] create_user
- [ ] delete_user
- [ ] send_private_message
- [ ] emoticons
- [ ] get_emoticon
- [ ] color
- [ ] message
- [ ] notify
- [ ] create_webhook
- [ ] get_webhook
- [ ] webhooks
- [ ] delete_webhook
- [ ] delete_all_webhooks
