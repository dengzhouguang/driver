(function() {
	var h = {},
		mt = {},
		c = {
			id : "38dd4dc9d50668280cafd5e36fb55bb4",
			dm : [ "jiazhao.com" ],
			js : "tongji.baidu.com/hm-web/js/",
			etrk : [],
			icon : '',
			ctrk : false,
			align : -1,
			nv : -1,
			vdur : 1800000,
			age : 31536000000,
			rec : 0,
			rp : [],
			trust : 0,
			vcard : 0,
			qiao : 0,
			lxb : 0,
			conv : 0,
			med : 0,
			cvcc : '',
			cvcf : [],
			apps : 'siteId=6454678&goTop=1'
		};
	var r = void 0,
		s = !0,
		t = null,
		w = !1;
	mt.i = {};
	mt.i.xa = /msie (\d+\.\d+)/i.test(navigator.userAgent);
	mt.i.va = /msie (\d+\.\d+)/i.test(navigator.userAgent) ? document.documentMode || +RegExp.$1 : r;
	mt.i.cookieEnabled = navigator.cookieEnabled;
	mt.i.javaEnabled = navigator.javaEnabled();
	mt.i.language = navigator.language || navigator.browserLanguage || navigator.systemLanguage || navigator.userLanguage || "";
	mt.i.za = (window.screen.width || 0) + "x" + (window.screen.height || 0);
	mt.i.colorDepth = window.screen.colorDepth || 0;
	mt.cookie = {};
	mt.cookie.set = function(a, b, f) {
		var d;
		f.F && (d = new Date, d.setTime(d.getTime() + f.F));
		document.cookie = a + "=" + b + (f.domain ? "; domain=" + f.domain : "") + (f.path ? "; path=" + f.path : "") + (d ? "; expires=" + d.toGMTString() : "") + (f.Xa ? "; secure" : "")
	};
	mt.cookie.get = function(a) {
		return (a = RegExp("(^| )" + a + "=([^;]*)(;|$)").exec(document.cookie)) ? a[2] : t
	};
	mt.p = {};
	mt.p.ia = function(a) {
		return document.getElementById(a)
	};
	mt.p.Qa = function(a, b) {
		for (b = b.toUpperCase(); (a = a.parentNode) && 1 == a.nodeType;)
			if (a.tagName == b) return a;
		return t
	};
	(mt.p.V = function() {
		function a() {
			if (!a.z) {
				a.z = s;
				for (var b = 0, f = d.length; b < f; b++) d[b]()
			}
		}
		function b() {
			try {
				document.documentElement.doScroll("left")
			} catch (d) {
				setTimeout(b, 1);return
			} a()
		}
		var f = w,
			d = [],
			g;
		document.addEventListener ? g = function() {
			document.removeEventListener("DOMContentLoaded", g, w);a()
		} : document.attachEvent && (g = function() {
			"complete" === document.readyState && (document.detachEvent("onreadystatechange", g), a())
		});(function() {
			if (!f)
				if (f = s, "complete" === document.readyState)
					a.z = s;
				else if (document.addEventListener) document.addEventListener("DOMContentLoaded",
						g, w), window.addEventListener("load", a, w);
				else if (document.attachEvent) {
					document.attachEvent("onreadystatechange", g);window.attachEvent("onload", a);
					var d = w;
					try {
						d = window.frameElement == t
					} catch (n) {} document.documentElement.doScroll && d && b()
			}
		})();return function(b) {
			a.z ? b() : d.push(b)
		}
	}()).z = w;
	mt.event = {};
	mt.event.c = function(a, b, f) {
		a.attachEvent ? a.attachEvent("on" + b, function(b) {
			f.call(a, b)
		}) : a.addEventListener && a.addEventListener(b, f, w)
	};
	mt.event.preventDefault = function(a) {
		a.preventDefault ? a.preventDefault() : a.returnValue = w
	};
	mt.j = {};
	mt.j.parse = function() {
		return (new Function('return (" + source + ")'))()
	};
	mt.j.stringify = function() {
		function a(a) {
			/["\\\x00-\x1f]/.test(a) && (a = a.replace(/["\\\x00-\x1f]/g, function(a) {
				var b = f[a];
				if (b) return b;
				b = a.charCodeAt();return "\\u00" + Math.floor(b / 16).toString(16) + (b % 16).toString(16)
			}));return '"' + a + '"'
		}
		function b(a) {
			return 10 > a ? "0" + a : a
		}
		var f = {
			"\b" : "\\b",
			"\t" : "\\t",
			"\n" : "\\n",
			"\f" : "\\f",
			"\r" : "\\r",
			'"' : '\\"',
			"\\" : "\\\\"
		};
		return function(d) {
			switch (typeof d) {
			case "undefined":
				return "undefined";case "number":
				return isFinite(d) ? String(d) : "null";case "string":
				return a(d);case "boolean":
				return String(d);
			default:
				if (d === t) return "null";
				if (d instanceof Array) {
					var f = [ "[" ],
						l = d.length,
						n,
						e,
						m;
					for (e = 0; e < l; e++) switch (m = d[e], typeof m) {
						case "undefined":
						case "function":
						case "unknown":
							break;default:
							n && f.push(","), f.push(mt.j.stringify(m)), n = 1
					}
					f.push("]");return f.join("")
				}
				if (d instanceof Date) return '"' + d.getFullYear() + "-" + b(d.getMonth() + 1) + "-" + b(d.getDate()) + "T" + b(d.getHours()) + ":" + b(d.getMinutes()) + ":" + b(d.getSeconds()) + '"';
				n = [ "{" ];e = mt.j.stringify;
				for (l in d)
					if (Object.prototype.hasOwnProperty.call(d, l)) switch (m = d[l], typeof m) {
						case "undefined":
						case "unknown":
						case "function":
							break;default:
							f && n.push(","), f = 1, n.push(e(l) + ":" + e(m))
				}
				n.push("}");return n.join("")
			}
		}
	}();
	mt.lang = {};
	mt.lang.d = function(a, b) {
		return "[object " + b + "]" === {}.toString.call(a)
	};
	mt.lang.Ua = function(a) {
		return mt.lang.d(a, "Number") && isFinite(a)
	};
	mt.lang.Wa = function(a) {
		return mt.lang.d(a, "String")
	};
	mt.localStorage = {};
	mt.localStorage.B = function() {
		if (!mt.localStorage.g) try {
				mt.localStorage.g = document.createElement("input"), mt.localStorage.g.type = "hidden", mt.localStorage.g.style.display = "none", mt.localStorage.g.addBehavior("#default#userData"), document.getElementsByTagName("head")[0].appendChild(mt.localStorage.g)
			} catch (a) {
				return w
		} return s
	};
	mt.localStorage.set = function(a, b, f) {
		var d = new Date;
		d.setTime(d.getTime() + f || 31536E6);try {
			window.localStorage ? (b = d.getTime() + "|" + b, window.localStorage.setItem(a, b)) : mt.localStorage.B() && (mt.localStorage.g.expires = d.toUTCString(), mt.localStorage.g.load(document.location.hostname), mt.localStorage.g.setAttribute(a, b), mt.localStorage.g.save(document.location.hostname))
		} catch (g) {}
	};
	mt.localStorage.get = function(a) {
		if (window.localStorage) {
			if (a = window.localStorage.getItem(a)) {
				var b = a.indexOf("|"),
					f = a.substring(0, b) - 0;
				if (f && f > (new Date).getTime()) return a.substring(b + 1)
			}
		} else if (mt.localStorage.B()) try {
				return mt.localStorage.g.load(document.location.hostname), mt.localStorage.g.getAttribute(a)
			} catch (d) {}
		return t
	};
	mt.localStorage.remove = function(a) {
		if (window.localStorage) window.localStorage.removeItem(a);
		else if (mt.localStorage.B()) try {
				mt.localStorage.g.load(document.location.hostname), mt.localStorage.g.removeAttribute(a), mt.localStorage.g.save(document.location.hostname)
			} catch (b) {}
	};
	mt.sessionStorage = {};
	mt.sessionStorage.set = function(a, b) {
		if (window.sessionStorage) try {
				window.sessionStorage.setItem(a, b)
			} catch (f) {}
	};
	mt.sessionStorage.get = function(a) {
		return window.sessionStorage ? window.sessionStorage.getItem(a) : t
	};
	mt.sessionStorage.remove = function(a) {
		window.sessionStorage && window.sessionStorage.removeItem(a)
	};
	mt.W = {};
	mt.W.log = function(a, b) {
		var f = new Image,
			d = "mini_tangram_log_" + Math.floor(2147483648 * Math.random()).toString(36);
		window[d] = f;
		f.onload = f.onerror = f.onabort = function() {
			f.onload = f.onerror = f.onabort = t;
			f = window[d] = t;b && b(a)
		};
		f.src = a
	};
	mt.N = {};
	mt.N.oa = function() {
		var a = "";
		if (navigator.plugins && navigator.mimeTypes.length) {
			var b = navigator.plugins["Shockwave Flash"];
			b && b.description && (a = b.description.replace(/^.*\s+(\S+)\s+\S+$/, "$1"))
		} else if (window.ActiveXObject) try {
				if (b = new ActiveXObject("ShockwaveFlash.ShockwaveFlash")) (a = b.GetVariable("$version")) && (a = a.replace(/^.*\s+(\d+),(\d+).*$/, "$1.$2"))
			} catch (f) {}
		return a
	};
	mt.N.Pa = function(a, b, f, d, g) {
		return '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="' + a + '" width="' + f + '" height="' + d + '"><param name="movie" value="' + b + '" /><param name="flashvars" value="' + (g || "") + '" /><param name="allowscriptaccess" value="always" /><embed type="application/x-shockwave-flash" name="' + a + '" width="' + f + '" height="' + d + '" src="' + b + '" flashvars="' + (g || "") + '" allowscriptaccess="always" /></object>'
	};
	mt.url = {};
	mt.url.f = function(a, b) {
		var f = a.match(RegExp("(^|&|\\?|#)(" + b + ")=([^&#]*)(&|$|#)", ""));
		return f ? f[3] : t
	};
	mt.url.Sa = function(a) {
		return (a = a.match(/^(https?:)\/\//)) ? a[1] : t
	};
	mt.url.la = function(a) {
		return (a = a.match(/^(https?:\/\/)?([^\/\?#]*)/)) ? a[2].replace(/.*@/, "") : t
	};
	mt.url.Q = function(a) {
		return (a = mt.url.la(a)) ? a.replace(/:\d+$/, "") : a
	};
	mt.url.Ra = function(a) {
		return (a = a.match(/^(https?:\/\/)?[^\/]*(.*)/)) ? a[2].replace(/[\?#].*/, "").replace(/^$/, "/") : t
	};
	(function() {
		function a() {
			for (var a = w, f = document.getElementsByTagName("script"), d = f.length, d = 100 < d ? 100 : d, g = 0; g < d; g++) {
				var l = f[g].src;
				if (l && 0 === l.indexOf("https://hm.baidu.com/h")) {
					a = s;break
				}
			}
			return a
		}
		return h.ha = a
	})();
	var x = h.ha;
	h.l = {
		Ta : "http://tongji.baidu.com/hm-web/welcome/ico",
		U : "hm.baidu.com/hm.gif",
		$ : "baidu.com",
		sa : "hmmd",
		ta : "hmpl",
		Ia : "utm_medium",
		ra : "hmkw",
		Ka : "utm_term",
		pa : "hmci",
		Ha : "utm_content",
		ua : "hmsr",
		Ja : "utm_source",
		qa : "hmcu",
		Ga : "utm_campaign",
		o : 0,
		k : Math.round(+new Date / 1E3),
		O : Math.round(+new Date / 1E3) % 65535,
		protocol : "https:" === document.location.protocol ? "https:" : "http:",
		J : x() || "https:" === document.location.protocol ? "https:" : "http:",
		Va : 0,
		Ma : 6E5,
		Na : 10,
		Oa : 1024,
		La : 1,
		K : 2147483647,
		X : "cc cf ci ck cl cm cp cu cw ds ep et fl ja ln lo lt nv rnd si st su v cv lv api sn u tt".split(" ")
	};
	(function() {
		var a = {
			m : {},
			c : function(a, f) {
				this.m[a] = this.m[a] || [];this.m[a].push(f)
			},
			s : function(a, f) {
				this.m[a] = this.m[a] || [];
				for (var d = this.m[a].length, g = 0; g < d; g++) this.m[a][g](f)
			}
		};
		return h.D = a
	})();
	(function() {
		function a(a, d) {
			var g = document.createElement("script");
			g.charset = "utf-8";b.d(d, "Function") && (g.readyState ? g.onreadystatechange = function() {
				if ("loaded" === g.readyState || "complete" === g.readyState) g.onreadystatechange = t, d()
			} : g.onload = function() {
				d()
			});
			g.src = a;var l = document.getElementsByTagName("script")[0];
			l.parentNode.insertBefore(g, l)
		}
		var b = mt.lang;
		return h.load = a
	})();
	(function() {
		function a() {
			return function() {
				h.b.a.nv = 0;
				h.b.a.st = 4;
				h.b.a.et = 3;
				h.b.a.ep = h.C.ma() + "," + h.C.ka();h.b.h()
			}
		}
		function b() {
			clearTimeout(B);var a;
			z && (a = "visible" == document[z]);C && (a = !document[C]);
			e = "undefined" == typeof a ? s : a;
			if ((!n || !m) && e && k) u = s, p = +new Date;
			else if (n && m && (!e || !k)) u = w, q += +new Date - p;
			n = e;
			m = k;
			B = setTimeout(b, 100)
		}
		function f(a) {
			var p = document,
				m = "";
			if (a in p)
				m = a;else
				for (var b = [ "webkit", "ms", "moz", "o" ], k = 0; k < b.length; k++) {
					var q = b[k] + a.charAt(0).toUpperCase() + a.slice(1);
					if (q in p) {
						m = q;break
					}
			}
			return m
		}
		function d(a) {
			if (!("focus" == a.type || "blur" == a.type) || !(a.target && a.target != window)) k = "focus" == a.type || "focusin" == a.type ? s : w, b()
		}
		var g = mt.event,
			l = h.D,
			n = s,
			e = s,
			m = s,
			k = s,
			v = +new Date,
			p = v,
			q = 0,
			u = s,
			z = f("visibilityState"),
			C = f("hidden"),
			B;
		b();(function() {
			var a = z.replace(/[vV]isibilityState/, "visibilitychange");
			g.c(document, a, b);g.c(window, "pageshow", b);g.c(window, "pagehide", b);
			"object" == typeof document.onfocusin ? (g.c(document, "focusin", d), g.c(document, "focusout", d)) : (g.c(window, "focus", d),
			g.c(window, "blur", d))
		})();
		h.C = {
			ma : function() {
				return +new Date - v
			},
			ka : function() {
				return u ? +new Date - p + q : q
			}
		};l.c("pv-b", function() {
			g.c(window, "unload", a())
		});return h.C
	})();
	(function() {
		var a = mt.lang,
			b = h.l,
			f = h.load,
			d = {
				wa : function(d) {
					if ((window._dxt === r || a.d(window._dxt, "Array")) && "undefined" !== typeof h.b) {
						var l = h.b.G();
						f([ b.protocol, "//datax.baidu.com/x.js?si=", c.id, "&dm=", encodeURIComponent(l) ].join(""), d)
					}
				},
				Fa : function(b) {
					if (a.d(b, "String") || a.d(b, "Number")) window._dxt = window._dxt || [], window._dxt.push([ "_setUserId", b ])
				}
			};
		return h.ca = d
	})();
	(function() {
		function a(m) {
			for (var b in m)
				if ({}.hasOwnProperty.call(m, b)) {
					var d = m[b];
					f.d(d, "Object") || f.d(d, "Array") ? a(d) : m[b] = String(d)
			}
		}
		function b(a) {
			return a.replace ? a.replace(/'/g, "'0").replace(/\*/g, "'1").replace(/!/g, "'2") : a
		}
		var f = mt.lang,
			d = mt.j,
			g = h.l,
			l = h.D,
			n = h.ca,
			e = {
				r : [],
				A : 0,
				S : w,
				init : function() {
					e.e = 0;l.c("pv-b", function() {
						e.da();e.fa()
					});l.c("pv-d", e.ga);l.c("stag-b", function() {
						h.b.a.api = e.e || e.A ? e.e + "_" + e.A : ""
					});l.c("stag-d", function() {
						h.b.a.api = 0;
						e.e = 0;
						e.A = 0
					})
				},
				da : function() {
					var a = window._hmt ||
					[];
					if (!a || f.d(a, "Array")) window._hmt = {
							id : c.id,
							cmd : {},
							push : function() {
								for (var a = window._hmt, m = 0; m < arguments.length; m++) {
									var p = arguments[m];
									f.d(p, "Array") && (a.cmd[a.id].push(p), "_setAccount" === p[0] && (1 < p.length && /^[0-9a-f]{32}$/.test(p[1])) && (p = p[1], a.id = p, a.cmd[p] = a.cmd[p] || []))
								}
							}
						}, window._hmt.cmd[c.id] = [], window._hmt.push.apply(window._hmt, a)
				},
				fa : function() {
					var a = window._hmt;
					if (a && a.cmd && a.cmd[c.id])
						for (var b = a.cmd[c.id], d = /^_track(Event|MobConv|Order|RTEvent)$/, p = 0, q = b.length; p < q; p++) {
							var f = b[p];
							d.test(f[0]) ? e.r.push(f) : e.L(f)
					}
					a.cmd[c.id] = {
						push : e.L
					}
				},
				ga : function() {
					if (0 < e.r.length)
						for (var a = 0, b = e.r.length; a < b; a++) e.L(e.r[a]);
					e.r = t
				},
				L : function(a) {
					var b = a[0];
					if (e.hasOwnProperty(b) && f.d(e[b], "Function")) e[b](a)
				},
				_setAccount : function(a) {
					1 < a.length && /^[0-9a-f]{32}$/.test(a[1]) && (e.e |= 1)
				},
				_setAutoPageview : function(a) {
					if (1 < a.length && (a = a[1], w === a || s === a)) e.e |= 2, h.b.R = a
				},
				_trackPageview : function(a) {
					if (1 < a.length && a[1].charAt && "/" === a[1].charAt(0)) {
						e.e |= 4;
						h.b.a.et = 0;
						h.b.a.ep = "";
						h.b.H ? (h.b.a.nv = 0, h.b.a.st = 4) : h.b.H = s;
						var b = h.b.a.u,
							d = h.b.a.su;
						h.b.a.u = g.protocol + "//" + document.location.host + a[1];e.S || (h.b.a.su = document.location.href);h.b.h();
						h.b.a.u = b;
						h.b.a.su = d
					}
				},
				_trackEvent : function(a) {
					2 < a.length && (e.e |= 8, h.b.a.nv = 0, h.b.a.st = 4, h.b.a.et = 4, h.b.a.ep = b(a[1]) + "*" + b(a[2]) + (a[3] ? "*" + b(a[3]) : "") + (a[4] ? "*" + b(a[4]) : ""), h.b.h())
				},
				_setCustomVar : function(a) {
					if (!(4 > a.length)) {
						var d = a[1],
							f = a[4] || 3;
						if (0 < d && 6 > d && 0 < f && 4 > f) {
							e.A++;
							for (var p = (h.b.a.cv || "*").split("!"), q = p.length; q < d - 1; q++) p.push("*");
							p[d - 1] = f + "*" + b(a[2]) +
							"*" + b(a[3]);
							h.b.a.cv = p.join("!");
							a = h.b.a.cv.replace(/[^1](\*[^!]*){2}/g, "*").replace(/((^|!)\*)+$/g, "");
							"" !== a ? h.b.setData("Hm_cv_" + c.id, encodeURIComponent(a), c.age) : h.b.ya("Hm_cv_" + c.id)
						}
					}
				},
				_setReferrerOverride : function(a) {
					1 < a.length && (h.b.a.su = a[1].charAt && "/" === a[1].charAt(0) ? g.protocol + "//" + window.location.host + a[1] : a[1], e.S = s)
				},
				_trackOrder : function(b) {
					b = b[1];f.d(b, "Object") && (a(b), e.e |= 16, h.b.a.nv = 0, h.b.a.st = 4, h.b.a.et = 94, h.b.a.ep = d.stringify(b), h.b.h())
				},
				_trackMobConv : function(a) {
					if (a = {
							webim : 1,
							tel : 2,
							map : 3,
							sms : 4,
							callback : 5,
							share : 6
						}[a[1]]) e.e |= 32, h.b.a.et = 93, h.b.a.ep = a, h.b.h()
				},
				_trackRTPageview : function(b) {
					b = b[1];f.d(b, "Object") && (a(b), b = d.stringify(b), 512 >= encodeURIComponent(b).length && (e.e |= 64, h.b.a.rt = b))
				},
				_trackRTEvent : function(b) {
					b = b[1];
					if (f.d(b, "Object")) {
						a(b);
						b = encodeURIComponent(d.stringify(b));
						var k = function(a) {
								var b = h.b.a.rt;
								e.e |= 128;
								h.b.a.et = 90;
								h.b.a.rt = a;h.b.h();
								h.b.a.rt = b
							},
							l = b.length;
						if (900 >= l) k.call(this, b);else
							for (var l = Math.ceil(l / 900), p = "block|" + Math.round(Math.random() *
											g.K).toString(16) + "|" + l + "|", q = [], u = 0; u < l; u++) q.push(u), q.push(b.substring(900 * u, 900 * u + 900)), k.call(this, p + q.join("|")), q = []
					}
				},
				_setUserId : function(a) {
					a = a[1];n.wa();n.Fa(a)
				}
			};
		e.init();
		h.aa = e;return h.aa
	})();
	(function() {
		function a() {
			"undefined" === typeof window["_bdhm_loaded_" + c.id] && (window["_bdhm_loaded_" + c.id] = s, this.a = {}, this.R = s, this.H = w, this.init())
		}
		var b = mt.url,
			f = mt.W,
			d = mt.N,
			g = mt.lang,
			l = mt.cookie,
			n = mt.i,
			e = mt.localStorage,
			m = mt.sessionStorage,
			k = h.l,
			v = h.D;
		a.prototype = {
			I : function(a, b) {
				a = "." + a.replace(/:\d+/, "");
				b = "." + b.replace(/:\d+/, "");
				var d = a.indexOf(b);
				return -1 < d && d + b.length === a.length
			},
			T : function(a, b) {
				a = a.replace(/^https?:\/\//, "");return 0 === a.indexOf(b)
			},
			w : function(a) {
				for (var d = 0; d < c.dm.length; d++)
					if (-1 <
						c.dm[d].indexOf("/")) {
						if (this.T(a, c.dm[d])) return s
					} else {
						var f = b.Q(a);
						if (f && this.I(f, c.dm[d])) return s
				}
				return w
			},
			G : function() {
				for (var a = document.location.hostname, b = 0, d = c.dm.length; b < d; b++)
					if (this.I(a, c.dm[b])) return c.dm[b].replace(/(:\d+)?[\/\?#].*/, "");
				return a
			},
			P : function() {
				for (var a = 0, b = c.dm.length; a < b; a++) {
					var d = c.dm[a];
					if (-1 < d.indexOf("/") && this.T(document.location.href, d)) return d.replace(/^[^\/]+(\/.*)/, "$1") + "/"
				}
				return "/"
			},
			na : function() {
				if (!document.referrer) return k.k - k.o > c.vdur ? 1 : 4;
				var a = w;
				this.w(document.referrer) && this.w(document.location.href) ? a = s : (a = b.Q(document.referrer), a = this.I(a || "", document.location.hostname));return a ? k.k - k.o > c.vdur ? 1 : 4 : 3
			},
			getData : function(a) {
				try {
					return l.get(a) || m.get(a) || e.get(a)
				} catch (b) {}
			},
			setData : function(a, b, d) {
				try {
					l.set(a, b, {
						domain : this.G(),
						path : this.P(),
						F : d
					}), d ? e.set(a, b, d) : m.set(a, b)
				} catch (f) {}
			},
			ya : function(a) {
				try {
					l.set(a, "", {
						domain : this.G(),
						path : this.P(),
						F : -1
					}), m.remove(a), e.remove(a)
				} catch (b) {}
			},
			Da : function() {
				var a,
					b,
					d,
					f,
					e;
				k.o = this.getData("Hm_lpvt_" +
						c.id) || 0;13 === k.o.length && (k.o = Math.round(k.o / 1E3));
				b = this.na();
				a = 4 !== b ? 1 : 0;
				if (d = this.getData("Hm_lvt_" + c.id)) {
					f = d.split(",");
					for (e = f.length - 1; 0 <= e; e--) 13 === f[e].length && (f[e] = "" + Math.round(f[e] / 1E3));
					for (; 2592E3 < k.k - f[0];) f.shift();
					e = 4 > f.length ? 2 : 3;
					for (1 === a && f.push(k.k); 4 < f.length;) f.shift();
					d = f.join(",");
					f = f[f.length - 1]
				} else d = k.k, f = "", e = 1;
				this.setData("Hm_lvt_" + c.id, d, c.age);this.setData("Hm_lpvt_" + c.id, k.k);
				d = k.k === this.getData("Hm_lpvt_" + c.id) ? "1" : "0";
				if (0 === c.nv && this.w(document.location.href) &&
					("" === document.referrer || this.w(document.referrer))) a = 0, b = 4;
				this.a.nv = a;
				this.a.st = b;
				this.a.cc = d;
				this.a.lt = f;
				this.a.lv = e
			},
			Ca : function() {
				for (var a = [], b = this.a.et, d = 0, f = k.X.length; d < f; d++) {
					var e = k.X[d],
						g = this.a[e];
					"undefined" !== typeof g && "" !== g && ("tt" !== e || "tt" === e && 0 === b) && a.push(e + "=" + encodeURIComponent(g))
				}
				switch (b) {
				case 0:
					a.push("sn=" + k.O);this.a.rt && a.push("rt=" + encodeURIComponent(this.a.rt));
					break;case 3:
					a.push("sn=" + k.O);
					break;case 90:
					this.a.rt && a.push("rt=" + this.a.rt)
				}
				return a.join("&")
			},
			Ea : function() {
				this.Da();
				this.a.si = c.id;
				this.a.su = document.referrer;
				this.a.ds = n.za;
				this.a.cl = n.colorDepth + "-bit";
				this.a.ln = String(n.language).toLowerCase();
				this.a.ja = n.javaEnabled ? 1 : 0;
				this.a.ck = n.cookieEnabled ? 1 : 0;
				this.a.lo = "number" === typeof _bdhm_top ? 1 : 0;
				this.a.fl = d.oa();
				this.a.v = "1.2.13";
				this.a.cv = decodeURIComponent(this.getData("Hm_cv_" + c.id) || "");
				this.a.tt = document.title || "";
				var a = document.location.href;
				this.a.cm = b.f(a, k.sa) || "";
				this.a.cp = b.f(a, k.ta) || b.f(a, k.Ia) || "";
				this.a.cw = b.f(a, k.ra) || b.f(a, k.Ka) || "";
				this.a.ci = b.f(a,
						k.pa) || b.f(a, k.Ha) || "";
				this.a.cf = b.f(a, k.ua) || b.f(a, k.Ja) || "";
				this.a.cu = b.f(a, k.qa) || b.f(a, k.Ga) || ""
			},
			init : function() {
				try {
					this.Ea(), 0 === this.a.nv ? this.Ba() : this.M(".*"), h.b = this, this.ba(), v.s("pv-b"), this.Aa()
				} catch (a) {
					var b = [];
					b.push("si=" + c.id);b.push("n=" + encodeURIComponent(a.name));b.push("m=" + encodeURIComponent(a.message));b.push("r=" + encodeURIComponent(document.referrer));f.log(k.J + "//" + k.U + "?" + b.join("&"))
				}
			},
			Aa : function() {
				function a() {
					v.s("pv-d")
				}
				this.R ? (this.H = s, this.a.et = 0, this.a.ep = "", this.h(a)) :
					a()
			},
			h : function(a) {
				var b = this;
				b.a.rnd = Math.round(Math.random() * k.K);v.s("stag-b");
				var d = k.J + "//" + k.U + "?" + b.Ca();
				v.s("stag-d");b.Z(d);f.log(d, function(d) {
					b.M(d);g.d(a, "Function") && a.call(b)
				})
			},
			ba : function() {
				var a = document.location.hash.substring(1),
					d = RegExp(c.id),
					f = -1 < document.referrer.indexOf(k.$),
					e = b.f(a, "jn"),
					g = /^heatlink$|^select$/.test(e);
				a && (d.test(a) && f && g) && (this.a.rnd = Math.round(Math.random() * k.K), a = document.createElement("script"), a.setAttribute("type", "text/javascript"), a.setAttribute("charset",
					"utf-8"), a.setAttribute("src", k.protocol + "//" + c.js + e + ".js?" + this.a.rnd), e = document.getElementsByTagName("script")[0], e.parentNode.insertBefore(a, e))
			},
			Z : function(a) {
				var b = m.get("Hm_unsent_" + c.id) || "",
					d = this.a.u ? "" : "&u=" + encodeURIComponent(document.location.href),
					b = encodeURIComponent(a.replace(/^https?:\/\//, "") + d) + (b ? "," + b : "");
				m.set("Hm_unsent_" + c.id, b)
			},
			M : function(a) {
				var b = m.get("Hm_unsent_" + c.id) || "";
				b && (a = encodeURIComponent(a.replace(/^https?:\/\//, "")), a = RegExp(a.replace(/([\*\(\)])/g, "\\$1") +
					"(%26u%3D[^,]*)?,?", "g"), (b = b.replace(a, "").replace(/,$/, "")) ? m.set("Hm_unsent_" + c.id, b) : m.remove("Hm_unsent_" + c.id))
			},
			Ba : function() {
				var a = this,
					b = m.get("Hm_unsent_" + c.id);
				if (b)
					for (var b = b.split(","), d = function(b) {
								f.log(k.J + "//" + decodeURIComponent(b), function(b) {
									a.M(b)
								})
							}, e = 0, g = b.length; e < g; e++) d(b[e])
			}
		};return new a
	})();
	var y = h.l,
		A = h.load;
	if (c.apps) {
		var D = [ y.protocol, "//ers.baidu.com/app/s.js?" ];
		D.push(c.apps);A(D.join(""))
	}
	var E = h.l,
		F = h.load;
	if (c.conv && "http:" === E.protocol) {
		var G = [ "http://page.baidu.com/conversion_js.php?sid=" ];
		G.push(c.conv);F(G.join(""))
	}
	var H = h.l,
		I = h.load;
	c.lxb && I([ H.protocol, "//lxbjs.baidu.com/lxb.js?sid=", c.lxb ].join(""));
	var J = h.load,
		K = h.l.protocol;
	if (c.qiao) {
		for (var L = [ K + "//goutong.baidu.com/site/" ], M = c.id, N = 5381, O = M.length, P = 0; P < O; P++) N = (33 * N + Number(M.charCodeAt(P))) % 4294967296;
		2147483648 < N && (N -= 2147483648);L.push(N % 1E3 + "/");L.push(c.id + "/b.js");L.push("?siteId=" + c.qiao);J(L.join(""))
	}
	(function() {
		var a = mt.p,
			b = mt.event,
			f = mt.url,
			d = mt.j;
		try {
			if (window.performance && performance.timing && "undefined" !== typeof h.b) {
				var g = +new Date,
					l = function(a) {
						var b = performance.timing,
							d = b[a + "Start"] ? b[a + "Start"] : 0;
						a = b[a + "End"] ? b[a + "End"] : 0;return {
							start : d,
							end : a,
							value : 0 < a - d ? a - d : 0
						}
					},
					n = t;
				a.V(function() {
					n = +new Date
				});
				var e = function() {
					var a,
						b,
						e;
					e = l("navigation");
					b = l("request");
					e = {
						netAll : b.start - e.start,
						netDns : l("domainLookup").value,
						netTcp : l("connect").value,
						srv : l("response").start - b.start,
						dom : performance.timing.domInteractive -
							performance.timing.fetchStart,
						loadEvent : l("loadEvent").end - e.start
					};
					a = document.referrer;
					var m = a.match(/^(http[s]?:\/\/)?([^\/]+)(.*)/) || [],
						u = t;
					b = t;
					if ("www.baidu.com" === m[2] || "m.baidu.com" === m[2]) u = f.f(a, "qid"), b = f.f(a, "click_t");
					a = u;
					e.qid = a != t ? a : "";
					b != t ? (e.bdDom = n ? n - b : 0, e.bdRun = g - b, e.bdDef = l("navigation").start - b) : (e.bdDom = 0, e.bdRun = 0, e.bdDef = 0);
					h.b.a.et = 87;
					h.b.a.ep = d.stringify(e);h.b.h()
				};
				b.c(window, "load", function() {
					setTimeout(e, 500)
				})
			}
		} catch (m) {}
	})();
	(function() {
		var a = mt.i,
			b = mt.lang,
			f = mt.event,
			d = mt.j;
		if ("undefined" !== typeof h.b && (c.med || (!a.xa || 7 < a.va) && c.cvcc)) {
			var g,
				l,
				n,
				e,
				m = function(a) {
					if (a.item) {
						for (var b = a.length, d = Array(b); b--;) d[b] = a[b];
						return d
					}
					return [].slice.call(a)
				},
				k = function(a, b) {
					for (var d in a)
						if (a.hasOwnProperty(d) && b.call(a, d, a[d]) === w) return w
				},
				v = function(a, f) {
					var e = {};
					e.n = g;
					e.t = "clk";
					e.v = a;
					if (f) {
						var k = f.getAttribute("href"),
							l = f.getAttribute("onclick") ? "" + f.getAttribute("onclick") : t,
							m = f.getAttribute("id") || "";
						n.test(k) ? (e.sn = "mediate",
						e.snv = k) : b.d(l, "String") && n.test(l) && (e.sn = "wrap", e.snv = l);
						e.id = m
					}
					h.b.a.et = 86;
					h.b.a.ep = d.stringify(e);h.b.h();
					for (e = +new Date; 400 >= +new Date - e;)
						;
				};
			if (c.med) l = "/zoosnet", g = "swt", n = /swt|zixun|call|chat|zoos|business|talk|kefu|openkf|online|\/LR\/Chatpre\.aspx/i, e = {
					click : function() {
						for (var a = [], b = m(document.getElementsByTagName("a")), b = [].concat.apply(b, m(document.getElementsByTagName("area"))), b = [].concat.apply(b, m(document.getElementsByTagName("img"))), d, f, e = 0, g = b.length; e < g; e++) d = b[e], f = d.getAttribute("onclick"),
							d = d.getAttribute("href"), (n.test(f) || n.test(d)) && a.push(b[e]);
						return a
					}
				};
			else if (c.cvcc) {
				l = "/other-comm";
				g = "other";
				n = c.cvcc.q || r;
				var p = c.cvcc.id || r;
				e = {
					click : function() {
						for (var a = [], b = m(document.getElementsByTagName("a")), b = [].concat.apply(b, m(document.getElementsByTagName("area"))), b = [].concat.apply(b, m(document.getElementsByTagName("img"))), d, e, f, g = 0, l = b.length; g < l; g++) d = b[g], n !== r ? (e = d.getAttribute("onclick"), f = d.getAttribute("href"), p ? (d = d.getAttribute("id"), (n.test(e) || n.test(f) || p.test(d)) &&
							a.push(b[g])) : (n.test(e) || n.test(f)) && a.push(b[g])) : p !== r && (d = d.getAttribute("id"), p.test(d) && a.push(b[g]));
						return a
					}
				}
			}
			if ("undefined" !== typeof e && "undefined" !== typeof n) {
				var q;
				l += /\/$/.test(l) ? "" : "/";
				var u = function(a, d) {
					if (q === d) return v(l + a, d), w;
					if (b.d(d, "Array") || b.d(d, "NodeList"))
						for (var e = 0, f = d.length; e < f; e++)
							if (q === d[e]) return v(l + a + "/" + (e + 1), d[e]), w
				};
				f.c(document, "mousedown", function(a) {
					a = a || window.event;
					q = a.target || a.srcElement;
					var d = {};
					for (k(e, function(a, e) {
							d[a] = b.d(e, "Function") ? e() : document.getElementById(e)
						}); q &&
						q !== document && k(d, u) !== w;) q = q.parentNode
				})
			}
		}
	})();(function() {
		var a = mt.p,
			b = mt.lang,
			f = mt.event,
			d = mt.j;
		if ("undefined" !== typeof h.b && b.d(c.cvcf, "Array") && 0 < c.cvcf.length) {
			var g = {
				Y : function() {
					for (var b = c.cvcf.length, d, e = 0; e < b; e++) (d = a.ia(decodeURIComponent(c.cvcf[e]))) && f.c(d, "click", g.ea())
				},
				ea : function() {
					return function() {
						h.b.a.et = 86;
						var a = {
							n : "form",
							t : "clk"
						};
						a.id = this.id;
						h.b.a.ep = d.stringify(a);h.b.h()
					}
				}
			};
			a.V(function() {
				g.Y()
			})
		}
	})();
	(function() {
		var a = mt.event,
			b = mt.j;
		if (c.med && "undefined" !== typeof h.b) {
			var f = +new Date,
				d = {
					n : "anti",
					sb : 0,
					kb : 0,
					clk : 0
				},
				g = function() {
					h.b.a.et = 86;
					h.b.a.ep = b.stringify(d);h.b.h()
				};
			a.c(document, "click", function() {
				d.clk++
			});a.c(document, "keyup", function() {
				d.kb = 1
			});a.c(window, "scroll", function() {
				d.sb++
			});a.c(window, "unload", function() {
				d.t = +new Date - f;g()
			});a.c(window, "load", function() {
				setTimeout(g, 5E3)
			})
		}
	})();
})();