# Description:
#   Showing of Lunch menu
#
# Dependencies:
#   None
#
# Configuration:
#
# Commands:
#   hubot lunch me     - Show the today's lunch menu

fs = require('fs')
Menu = JSON.parse(fs.readFileSync("../../Menu.JSON","utf-8"))
#Menu = JSON.parse(MenuJ)
#console.error(Menu)
module.exports = (robot) ->
  robot.respond /lunch me/i, (msg) ->
#x=() ->
    curr = new Date()
    currDay = curr.getDate()
    currMon = (curr.getMonth()+1)
    for i in [0..Menu.length-1]
      if Menu[i].Mon == currMon && Menu[i].Day == currDay
#        console.error("Matched\n")
        msg.send "本日のメニューは, #{Menu[i].Menu}で、#{Menu[i].Cal}です。"

#x()
