const $sql = require('../sql/sqlMap')
const $http = require('../sql/http')
const $time = require('../utils/time')

function formatData(rows) {
  return rows.map(row => {
    if(row.create_time) {
      row.create_time = $time.formatTime(row.create_time)
    }
    if(row.update_time) {
      row.update_time = $time.formatTime(row.update_time)
    }
    if(row.startTime) {
      row.startTime = $time.formatYmd(row.startTime)
    }
    if(row.endTime) {
      row.endTime = $time.formatYmd(row.endTime)
    }
    return Object.assign({}, row)
  })
}

const goods = {


  /*获取周报信息 start*/
  list (req, res) {
    let params = req.body
    $http.userVerify(req, res, () => {
      let userId = params.userId
     // let id = params.id
      if(!userId) {$http.writeJson(res, {code: 202, message:'参数有误'})}
      else {
        let sql = $sql.goodsDetail.getGoodsImgList
        let arrayParams = [userId]
        sql += " order by create_time desc"; // id倒序排
        $http.connPool(sql, arrayParams, (err, result) => {
          console.log(result)
          if(err) {
            return $http.writeJson(res, {code:-2, message:'失败',errMsg: err})
          } else {
            let resultData = {}
            resultData.page = {
              total: result.length
            }
             resultData.list = formatData(result)
            // resultData.list = result
            return $http.writeJson(res, {code: 200, data: resultData, message: '获取商品图片成功'})
          }
        })
      }
    })
  },
  /*获取周报信息 end*/



}

module.exports = goods
