# Description:
#   Notification of the study meeting.

cronJob = require('cron').CronJob
module.exports = (robot) ->
  new cronJob('0 0 10 * * 1-5', () =>
    envelope = room: process.env.HUBOT_CHATWORK_ROOMS
    robot.send envelope, "おはようございます、朝会の時間です。"
  ).start()
