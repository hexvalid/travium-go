package routers

import (
	"github.com/astaxie/beego"
	"github.com/hexvalid/travium-go/dashboard/controllers"
)

func init() {
	beego.Router("/", &controllers.IndexController{})
	beego.Router("/travium/", &controllers.BaseController{})
	beego.Router("/createAccount/", &controllers.BaseController{})

}
