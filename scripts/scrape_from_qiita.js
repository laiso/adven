const rp = require('request-promise');
const cheerio = require('cheerio');

(async () => {
  const options = {
    //uri: "file:///Users/kstg/tmp/adven/scripts/qiita.html",
    uri: "https://qiita.com/advent-calendar/2018/flutter",
    transform: function (body) {
      return cheerio.load(body);
    }
  };

  const $ = await rp(options)
  const result = []
  $(".adventCalendarCalendar_day").each((i, item) => {
    const $item = $(item);
    const $author = $item.find(".adventCalendarCalendar_author")
    const $a = $item.find(".adventCalendarCalendar_comment a")
    const title = $a.text()
    const url = $a.attr('href')
    const name = $author.find("a").text().trim()
    const iconUrl = $author.find("img").attr('src')
    const date = $item.find(".adventCalendarCalendar_date").text()
    result.push({title, url, name, iconUrl, date})
  })
  console.log(JSON.stringify(result))
})()
