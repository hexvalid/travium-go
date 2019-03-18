package controllers

import (
	"github.com/astaxie/beego"
)

type IndexController struct {
	beego.Controller
}

func (c *IndexController) Get() {
	c.Data["Timeout"] = 4
	c.Data["Target"] = "/travium/"
	c.TplName = "redirect.tpl"
}
