package routers

import (
	"fmt"
	"github.com/codegangsta/martini-contrib/render"
	"github.com/go-martini/martini"
	"github.com/martini-contrib/sessions"
	"labix.org/v2/mgo"
	"net/http"
)

func InitDB() martini.Handler {
	session, err := mgo.Dial("mongodb://localhost")
	if err != nil {
		fmt.Println("Failed to connect to mongo DB...")
		panic(err)
	}

	return func(res http.ResponseWriter, r *http.Request, c martini.Context) {
		c.Map(session.DB("vim_tips"))
	}
}

func Initialize(m *martini.ClassicMartini) {
	m.Use(render.Renderer(render.Options{
		Layout:     "layout",
		Directory:  "templates",
		Extensions: []string{".tpl", ".html"},
		Charset:    "UTF-8",
	}))

	store := sessions.NewCookieStore([]byte("vim-tips-secure"))
	m.Use(sessions.Sessions("my_session", store))

	InitConnections()
	m.Use(InitDB())
	InitRouters(m)
}

func InitRouters(m *martini.ClassicMartini) {
	//Routers for front pages
	m.Get("/", HandleIndex)
	m.Get("/tips/:Id", HandleTip)
	m.Get("/random_tips/txt", HandleRandomTxtTip)
	m.Get("/random_tips/json", HandleRandomJsonTip)
	m.Get("/casts", HandleCasts)
	m.Get("/casts/:Id", ShowCast)
	m.Get("/api", HandleAPI)
	m.Get("/tools", HandleTools)
	m.Get("/about", HandleAbout)
	m.Get("/admin/login", ShowLoginPage)
	//Routers for admin panel
	m.Group("/admin", func(r martini.Router) {
		r.Get("/logout", HandleLogout)
		r.Post("/login", HandleLogin)
		r.Get("/index", HandleAdminIndex)
		r.Get("/tips", AdminShowTips)
		r.Get("/tips/add", AdminAddTipsPage)
		r.Post("/tips/add", AdminAddTips)
		r.Get("/tips/modify/:Id", AdminModifyTips)
	}, validateSession)

}
