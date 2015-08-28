# Description:
#   hipchat room memeber
#
# Dependencies:
#   hipchatter
#
# Configuration:
#   HUBOT_HIPCHAT_TOKEN
#   HUBOT_HIPCHAT_API_ROOT
#
# Commands:
#   hubot room - show room info
#   hubot room add <user_id> - add member
#   hubot room delete <user_id> - delete member
#   hubot room invite <user_id> - invite member
#
# Authors:
#   yudppp

Hipchatter = require 'hipchatter'

module.exports = (robot) ->

  unless process.env.HUBOT_HIPCHAT_TOKEN
    res.send "token isn't set."

  hipchatter = new Hipchatter(process.env.HUBOT_HIPCHAT_TOKEN, process.env.HUBOT_HIPCHAT_API_ROOT)

  robot.respond /room$/i, (res) ->
    hipchatter.get_room res.message.room, (err, room) ->
      if (err)
        res.send err.toString()
      else
        res.send JSON.stringify room

  robot.respond /room add @?([\w_]+)$/i, (res) ->
    user_name =  '@' + res.match[1]
    params = {room_name: res.message.room, user_email: user_name}
    res.send 'success: invited ' + res.match[1] + ' in ' + res.message.room
    hipchatter.add_member params, (err) ->
      if (err)
        res.send err.toString()
      else
        res.send 'success: add ' + params.user_email + ' in ' + params.room_name

  robot.respond /room delete @?([\w_]+)$/i, (res) ->
    user_name =  '@' + res.match[1]
    params = {room_name: res.message.room, user_email: user_name}
    hipchatter.delete_member params, (err) ->
      if (err)
        res.send err.toString()
      else
        res.send 'success: delete ' + params.user_email + ' in ' + params.room_name

  robot.respond /room invite @?([\w_]+)$/i, (res) ->
    user_name =  '@' + res.match[1]
    params = {room_name: res.message.room, user_email: user_name}
    hipchatter.invite_member params, (err) ->
      if (err)
        res.send err.toString()
      else
        res.send 'success: invite ' + params.user_email + ' in ' + params.room_name
