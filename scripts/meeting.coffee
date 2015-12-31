# Description:
#   Notification of the study meeting.

cronJob = require('cron').CronJob
module.exports = (robot) ->
  new cronJob('0 30 10 * * 1-5', () =>
    envelope = room: process.env.HUBOT_CHATWORK_ROOMS
    robot.send envelope, "おはようございます、朝会の時間です。"
  ).start()

  new cronJob('0 0 * * * *', () =>
    date     = new Date()
    hour     = date.getHours()
    envelope = room: process.env.HUBOT_CHATWORK_ROOMS
    robot.send envelope, "#{hour} 時です。"
  ).start()
