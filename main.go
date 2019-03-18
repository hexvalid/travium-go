package main

import (
	"github.com/astaxie/beego"
	_ "github.com/hexvalid/travium-go/dashboard/routers"
)

func main() {

	beego.LoadAppConfig("json", "dashboard/config.json")
	beego.Run()
}
