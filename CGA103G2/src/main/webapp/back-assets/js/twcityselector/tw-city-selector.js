! function(i, t) {
    "object" == typeof exports && "object" == typeof module ? module.exports = t() : "function" == typeof define && define.amd ? define("TwCitySelector", [], t) : "object" == typeof exports ? exports.TwCitySelector = t() : i.TwCitySelector = t()
}(window, function() {
    return function(i) {
        var t = {};

        function n(s) {
            if (t[s]) return t[s].exports;
            var o = t[s] = {
                i: s,
                l: !1,
                exports: {}
            };
            return i[s].call(o.exports, o, o.exports, n), o.l = !0, o.exports
        }
        return n.m = i, n.c = t, n.d = function(i, t, s) {
            n.o(i, t) || Object.defineProperty(i, t, {
                enumerable: !0,
                get: s
            })
        }, n.r = function(i) {
            "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(i, Symbol.toStringTag, {
                value: "Module"
            }), Object.defineProperty(i, "__esModule", {
                value: !0
            })
        }, n.t = function(i, t) {
            if (1 & t && (i = n(i)), 8 & t) return i;
            if (4 & t && "object" == typeof i && i && i.__esModule) return i;
            var s = Object.create(null);
            if (n.r(s), Object.defineProperty(s, "default", {
                    enumerable: !0,
                    value: i
                }), 2 & t && "string" != typeof i)
                for (var o in i) n.d(s, o, function(t) {
                    return i[t]
                }.bind(null, o));
            return s
        }, n.n = function(i) {
            var t = i && i.__esModule ? function() {
                return i.default
            } : function() {
                return i
            };
            return n.d(t, "a", t), t
        }, n.o = function(i, t) {
            return Object.prototype.hasOwnProperty.call(i, t)
        }, n.p = "", n(n.s = 0)
    }([function(i, t, n) {
        "use strict";
        n.r(t);
        var s = {
                counties: ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                districts: [
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["100", "103", "104", "105", "106", "108", "110", "111", "112", "114", "115", "116"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["200", "201", "202", "203", "204", "205", "206"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["207", "208", "220", "221", "222", "223", "224", "226", "227", "228", "231", "232", "233", "234", "235", "236", "237", "238", "239", "241", "242", "243", "244", "247", "248", "249", "251", "252", "253"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "???????????????"],
                        ["260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "272", "290"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["320", "324", "325", "326", "327", "328", "330", "333", "334", "335", "336", "337", "338"]
                    ],
                    [
                        ["??????", "??????", "?????????"],
                        ["300", "300", "300"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["302", "303", "304", "305", "306", "307", "308", "310", "311", "312", "313", "314", "315"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["350", "351", "352", "353", "354", "356", "357", "358", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369"]
                    ],
                    [
                        ["??????", "??????", "??????", "??????", "??????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["400", "401", "402", "403", "404", "406", "407", "408", "411", "412", "413", "414", "420", "421", "422", "423", "424", "426", "427", "428", "429", "432", "433", "434", "435", "436", "437", "438", "439"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["500", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "520", "521", "522", "523", "524", "525", "526", "527", "528", "530"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["540", "541", "542", "544", "545", "546", "551", "552", "553", "555", "556", "557", "558"]
                    ],
                    [
                        ["??????", "??????"],
                        ["600", "600"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["602", "603", "604", "605", "606", "607", "608", "611", "612", "613", "614", "615", "616", "621", "622", "623", "624", "625"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["630", "631", "632", "633", "634", "635", "636", "637", "638", "640", "643", "646", "647", "648", "649", "651", "652", "653", "654", "655"]
                    ],
                    [
                        ["?????????", "??????", "??????", "??????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["700", "701", "702", "704", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "730", "731", "732", "733", "734", "735", "736", "737", "741", "742", "743", "744", "745"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "????????????", "????????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "????????????", "?????????", "?????????"],
                        ["800", "801", "802", "803", "804", "805", "806", "807", "811", "812", "813", "814", "815", "817", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "840", "842", "843", "844", "845", "846", "847", "848", "849", "851", "852"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["880", "881", "882", "883", "884", "885"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["890", "891", "892", "893", "894", "896"]
                    ],
                    [
                        ["?????????", "????????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["900", "901", "902", "903", "904", "905", "906", "907", "908", "909", "911", "912", "913", "920", "921", "922", "923", "924", "925", "926", "927", "928", "929", "931", "932", "940", "941", "942", "943", "944", "945", "946", "947"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["950", "951", "952", "953", "954", "955", "956", "957", "958", "959", "961", "962", "963", "964", "965", "966"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
                        ["970", "971", "972", "973", "974", "975", "976", "977", "978", "979", "981", "982", "983"]
                    ],
                    [
                        ["?????????", "?????????", "?????????", "?????????"],
                        ["209", "210", "211", "212"]
                    ]
                ]
            },
            o = {
                counties: ["Taipei City", "Keelung City", "New Taipei City", "Yilan County", "Taoyuan City", "Hsinchu City", "Hsinchu County", "Miaoli County", "Taichung City", "Changhua County", "Nantou County", "Chiayi City", "Chiayi County", "Yunlin County", "Tainan City", "Kaohsiung City", "Penghu County", "Kinmen County", "Pingtung County", "Taitung County", "Hualien County", "Lienchiang County"],
                districts: [
                    [
                        ["Zhongzheng District", "Datong District", "Zhongshan District", "Songshan District", "Da???an District", "Wanhua District", "Xinyi District", "Shilin District", "Beitou District", "Neihu District", "Nangang District", "Wenshan District"],
                        ["100", "103", "104", "105", "106", "108", "110", "111", "112", "114", "115", "116"]
                    ],
                    [
                        ["Ren???ai District", "Xinyi District", "Zhongzheng District", "Zhongshan District", "Anle District", "Nuannuan District", "Qidu District"],
                        ["200", "201", "202", "203", "204", "205", "206"]
                    ],
                    [
                        ["Wanli District", "Jinshan District", "Banqiao District", "Xizhi District", "Shenkeng District", "Shiding District", "Ruifang District", "Pingxi District", "Shuangxi District", "Gongliao District", "Xindian District", "Pinglin District", "Wulai District", "Yonghe District", "Zhonghe District", "Tucheng District", "Sanxia District", "Shulin District", "Yingge District", "Sanchong District", "Xinzhuang District", "Taishan District", "Linkou District", "LuzhouDistrict", "Wugu District", "Bali District", "Tamsui District", "Sanzhi District", "Shimen District"],
                        ["207", "208", "220", "221", "222", "223", "224", "226", "227", "228", "231", "232", "233", "234", "235", "236", "237", "238", "239", "241", "242", "243", "244", "247", "248", "249", "251", "252", "253"]
                    ],
                    [
                        ["Yilan City", "Toucheng Township", "Jiaoxi Township", "Zhuangwei Township", "Yuanshan Township", "Luodong Township", "Sanxing Township", "Datong Township", "Wujie Township", "Dongshan Township", "Su???ao Township", "Nan???ao Township", "Diauyutai"],
                        ["260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "272", "290"]
                    ],
                    [
                        ["Zhongli District", "Pingzhen District", "Longtan District", "Yangmei District", "Xinwu District", "Guanyin District", "Taoyuan District", "Guishan District", "Bade District", "Daxi District", "Fuxing District", "Dayuan District", "Luzhu District"],
                        ["320", "324", "325", "326", "327", "328", "330", "333", "334", "335", "336", "337", "338"]
                    ],
                    [
                        ["East District", "North District", "Xiangshan District"],
                        ["300", "300", "300"]
                    ],
                    [
                        ["Zhubei City", "Hukou Township", "Xinfeng Township", "Xinpu Township", "Guanxi Township", "Qionglin Township", "Baoshan Township", "Zhudong Township", "Wufeng Township", "Hengshan Township", "Jianshi Township", "Beipu Township", "Emei Township"],
                        ["302", "303", "304", "305", "306", "307", "308", "310", "311", "312", "313", "314", "315"]
                    ],
                    [
                        ["Zhunan Township", "Toufen Township", "Sanwan Township", "Nanzhuang Township", "Shitan Township", "Houlong Township", "Tongxiao Township", "Yuanli Township", "Miaoli City", "Zaoqiao Township", "Touwu Township", "Gongguan Township", "Dahu Township", "Tai???an Township", "Tongluo Township", "Sanyi Township", "Xihu Township", "Zhuolan Township"],
                        ["350", "351", "352", "353", "354", "356", "357", "358", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369"]
                    ],
                    [
                        ["Central District", "East District", "South District", "West District", "North District", "Beitun District", "Xitun District", "Nantun District", "Taiping District", "Dali District", "Wufeng District", "Wuri District", "Fengyuan District", "Houli District", "Shigang District", "Dongshi District", "Heping District", "Xinshe District", "Tanzi District", "Daya District", "Shengang District", "Dadu District", "ShaluDistrict", "Longjing District", "Wuqi District", "Qingshui District", "Dajia District", "Waipu District", "Da???an District"],
                        ["400", "401", "402", "403", "404", "406", "407", "408", "411", "412", "413", "414", "420", "421", "422", "423", "424", "426", "427", "428", "429", "432", "433", "434", "435", "436", "437", "438", "439"]
                    ],
                    [
                        ["Changhua City", "Fenyuan Township", "Huatan Township", "Xiushui Township", "Lukang Township", "Fuxing Township", "Xianxi Township", "Hemei Township", "Shengang Township", "Yuanlin Township", "Shetou Township", "Yongjing Township", "Puxin Township", "Xihu Township", "Dacun Township", "Puyan Township", "Tianzhong Township", "Beidou Township", "Tianwei Township", "Pitou Township", "Xizhou Township", "Zhutang Township", "Erlin Township", "Dacheng Township", "Fangyuan Township", "Ershui Township"],
                        ["500", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "520", "521", "522", "523", "524", "525", "526", "527", "528", "530"]
                    ],
                    [
                        ["Nantou City", "Zhongliao Township", "Caotun Township", "Guoxing Township", "Puli Township", "Ren???ai Township", "Mingjian Township", "Jiji Township", "Shuili Township", "Yuchi Township", "Xinyi Township", "Zhushan Township", "Lugu Township"],
                        ["540", "541", "542", "544", "545", "546", "551", "552", "553", "555", "556", "557", "558"]
                    ],
                    [
                        ["East District", "West District"],
                        ["600", "600"]
                    ],
                    [
                        ["FanluTownship", "Meishan Township", "Zhuqi Township", "Alishan Township", "Zhongpu Township", "Dapu Township", "Shuishang Township", "Lucao Township", "Taibao City", "Puzi City", "Dongshi Township", "Liujiao Township", "Xingang Township", "Minxiong Township", "Dalin Township", "Xikou Township", "Yizhu Township", "Budai Township"],
                        ["602", "603", "604", "605", "606", "607", "608", "611", "612", "613", "614", "615", "616", "621", "622", "623", "624", "625"]
                    ],
                    [
                        ["Dounan Township", "Dapi Township", "Huwei Township", "Tuku Township", "Baozhong Township", "Dongshi Township", "Taixi Township", "Lunbei Township", "Mailiao Township", "Douliu City", "Linnei Township", "Gukeng Township", "Citong Township", "Xiluo Township", "Erlun Township", "Beigang Township", "Shuilin Township", "Kouhu Township", "Sihu Township", "Yuanchang Township"],
                        ["630", "631", "632", "633", "634", "635", "636", "637", "638", "640", "643", "646", "647", "648", "649", "651", "652", "653", "654", "655"]
                    ],
                    [
                        ["West Central District", "East District", "South District", "North District", "Anping District", "Annan District", "Yongkang District", "Guiren District", "Xinhua District", "Zuozhen District", "Yujing District", "Nanxi District", "Nanhua District", "Rende District", "Guanmiao District", "Longqi District", "Guantian District", "Madou District", "Jiali District", "Xigang District", "Qigu District", "Jiangjun District", "Xuejia District", "Beimen District", "Xinying District", "Houbi District", "Baihe District", "Dongshan District", "Liujia District", "Xiaying District", "Liuying District", "Yanshui District", "Shanhua District", "Danei District", "Shanshang District", "Xinshi District", "Anding District"],
                        ["700", "701", "702", "704", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "730", "731", "732", "733", "734", "735", "736", "737", "741", "742", "743", "744", "745"]
                    ],
                    [
                        ["Xinxing District", "Qianjin District", "Lingya District", "Yancheng District", "Gushan District", "Qijin District", "Qianzhen District", "Sanmin District", "Nanzi District", "Xiaogang District", "Zuoying District", "Renwu District", "Dashe District", "Dongsha Islands", "Nansha Islands", "Gangshan District", "Luzhu District", "Alian District", "Tianliao District", "Yanchao District", "Qiaotou District", "Ziguan District", "Mituo District", "Yong???an District", "Hunei District", "Fengshan District", "Daliao District", "Linyuan District", "Niaosong District", "Dashu District", "Qishan District", "Meinong District", "Liugui District", "Neimen District", "Shanlin District", "Jiaxian District", "Taoyuan District", "Namaxia District", "Maolin District", "Qieding District"],
                        ["800", "801", "802", "803", "804", "805", "806", "807", "811", "812", "813", "814", "815", "817", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "840", "842", "843", "844", "845", "846", "847", "848", "849", "851", "852"]
                    ],
                    [
                        ["Magong City", "Xiyu Township", "Wang???an Township", "Qimei Township", "Baisha Township", "Huxi Township"],
                        ["880", "881", "882", "883", "884", "885"]
                    ],
                    [
                        ["Jinsha Township", "Jinhu Township", "Jinning Township", "Jincheng Township", "Lieyu Township", "Wuqiu Township"],
                        ["890", "891", "892", "893", "894", "896"]
                    ],
                    [
                        ["Pingtung City", "Sandimen Township", "Wutai Township", "Majia Township", "Jiuru Township", "Ligang Township", "Gaoshu Township", "Yanpu Township", "Changzhi Township", "Linluo Township", "Zhutian Township", "Neipu Township", "Wandan Township", "Chaozhou Township", "Taiwu Township", "Laiyi Township", "Wanluan Township", "Kanding Township", "Xinpi Township", "Nanzhou Township", "Linbian Township", "Donggang Township", "Liuqiu Township", "Jiadong Township", "Xinyuan Township", "Fangliao Township", "Fangshan Township", "Chunri Township", "Shizi Township", "Checheng Township", "Mudan Township", "Hengchun Township", "Manzhou Township"],
                        ["900", "901", "902", "903", "904", "905", "906", "907", "908", "909", "911", "912", "913", "920", "921", "922", "923", "924", "925", "926", "927", "928", "929", "931", "932", "940", "941", "942", "943", "944", "945", "946", "947"]
                    ],
                    [
                        ["Taitung City", "Ludao Township", "Lanyu Township", "Yanping Township", "Beinan Township", "Luye Township", "Guanshan Township", "Haiduan Township", "Chishang Township", "Donghe Township", "Chenggong Township", "Changbin Township", "Taimali Township", "Jinfeng Township", "Dawu Township", "Daren Township"],
                        ["950", "951", "952", "953", "954", "955", "956", "957", "958", "959", "961", "962", "963", "964", "965", "966"]
                    ],
                    [
                        ["Hualien City", "Xincheng Township", "Xiulin Township", "Ji???an Township", "Shoufeng Township", "Fenglin Township", "Guangfu Township", "Fengbin Township", "Ruisui Township", "Wanrong Township", "Yuli Township", "Zhuoxi Township", "Fuli Township"],
                        ["970", "971", "972", "973", "974", "975", "976", "977", "978", "979", "981", "982", "983"]
                    ],
                    [
                        ["Nangan Township", "Beigan Township", "Juguang Township", "Dongyin Township"],
                        ["209", "210", "211", "212"]
                    ]
                ]
            };

        function e(i, t) {
            for (var n = 0; n < t.length; n++) {
                var s = t[n];
                s.enumerable = s.enumerable || !1, s.configurable = !0, "value" in s && (s.writable = !0), Object.defineProperty(i, s.key, s)
            }
        }
        var a = function() {
            function i() {
                var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {},
                    n = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : [],
                    s = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : {};
                return function(i, t) {
                    if (!(i instanceof t)) throw new TypeError("Cannot call a class as a function")
                }(this, i), n.length && this.checkOptionsRequired(t, n), this.setOptionsExtend(t, s)
            }
            var t, n, s;
            return t = i, (n = [{
                key: "checkOptionsRequired",
                value: function(i, t) {
                    var n = "";
                    if (i = i || {}, Object.keys(t).forEach(function(t) {
                            i.hasOwnProperty(t) || (n += t + ",")
                        }), n) throw "????????????: " + n
                }
            }, {
                key: "setOptionsExtend",
                value: function(i, t) {
                    if (!i) return t;
                    var n;
                    for (n in i) t[n] = i[n];
                    return t
                }
            }]) && e(t.prototype, n), s && e(t, s), i
        }();
        t.default = h;

        function h() {
            var i = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {};
            this.VERSION = "2.0.0", this.ROLE_ATTR_NAME = "tw-city-selector";
            var t = i.length ? ["el"] : [];
            return this.options = new a(i, t, {
                el: null,
                elCounty: null,
                elDistrict: null,
                elZipcode: null,
                only: null,
                except: null,
                disabled: !1,
                hasZipcode: !1,
                hiddenZipcode: !1,
                countyValue: null,
                districtValue: null,
                countyClassName: "county",
                countyFieldName: "county",
                districtClassName: "district",
                districtFieldName: "district",
                zipcodeClassName: "zipcode",
                zipcodeFieldName: "zipcode",
                lang: "zh-tw",
                standardWords: !1,
                bootstrapStyle: !1
            }), setTimeout(function() {
                (function() {
                    if (this.options.el) return this.el = u(this.options.el), this.elCounty = u(this.options.elCounty, this.el), this.elDistrict = u(this.options.elDistrict, this.el), this.elZipcode = u(this.options.elZipcode, this.el), this.elCounty && this.elCounty.dataset.value && (this.options.countyValue = this.elCounty.dataset.value, this.options.districtValue = this.elDistrict.dataset.value), r.call(this);
                    var i = document.querySelectorAll("[role=" + this.ROLE_ATTR_NAME + "]");
                    return Array.prototype.forEach.call(i, function(i) {
                        var t = JSON.parse(JSON.stringify(this));
                        return t.el = i, t.elCounty = null, t.elDistrict = null, t.elZipcode = null, t = function() {
                            return this.options.only = this.el.getAttribute("data-only") ? this.el.getAttribute("data-only").replace(/\s/g, "").split(",") : null, this.options.except = this.el.getAttribute("data-except") ? this.el.getAttribute("data-except").replace(/\s/g, "").split(",") : null, this.options.countyValue = this.el.getAttribute("data-county-value"), this.options.districtValue = this.el.getAttribute("data-district-value"), this.options.hasZipcode = null != this.el.getAttribute("data-has-zipcode"), this.options.hiddenZipcode = null != this.el.getAttribute("data-hidden-zipcode"), this.options.disabled = null != this.el.getAttribute("data-disabled"), this.options.standardWords = null != this.el.getAttribute("data-standard-words"), this.options.bootstrapStyle = null != this.el.getAttribute("data-bootstrap-style"), this
                        }.call(t), r.call(t)
                    }, this), i
                }).call(this)
            }.bind(this), 0), this
        }

        function r() {
            return this.options.lang && "en-us" === this.options.lang ? this.data = o : this.data = s,
                function() {
                    var i = arguments.length > 0 && void 0 !== arguments[0] && arguments[0],
                        t = i ? "???" : "???",
                        n = i ? "???" : "???";
                    this.data.counties = this.data.counties.map(function(i) {
                        return i.includes(t) ? i.replace(t, n) : i
                    }), this.data.districts.forEach(function(i, s, o) {
                        o[s][0] = i[0].map(function(i) {
                            return i.includes(t) ? i.replace(t, n) : i
                        })
                    })
                }.call(this, this.options.standardWords),
                function() {
                    var i = document.createDocumentFragment();
                    if (!this.elCounty) {
                        var t = document.createElement("select");
                        this.elCounty = t, i.appendChild(this.elCounty)
                    }
                    this.elCounty.classList.add(this.options.countyClassName), this.elCounty.name = this.options.countyFieldName, this.options.disabled && this.elCounty.setAttribute("disabled", !0);
                    if (function() {
                            var i = this.elCounty;
                            this.options.lang && "en-us" === this.options.lang ? i.options.add(new Option("Select County/City", "")) : i.options.add(new Option("????????????", ""));
                            for (var t = function() {
                                    var i = this.options.only;
                                    return "string" == typeof i ? i : Array.isArray(i) ? i.map(function(i) {
                                        var t = i.indexOf("@");
                                        return -1 === t ? i : i.substring(0, t)
                                    }) : null
                                }.call(this), n = function() {
                                    var i = this.options.except;
                                    return "string" == typeof i ? i : Array.isArray(i) ? i.filter(function(i) {
                                        return -1 === i.indexOf("@")
                                    }) : null
                                }.call(this), s = 0, o = this.data.counties.length; s < o; s++)
                                if (!(t && -1 === t.indexOf(this.data.counties[s]) || n && -1 !== n.indexOf(this.data.counties[s]))) {
                                    var e = new Option(this.data.counties[s], this.data.counties[s]);
                                    e.dataset.index = s, i.options.add(e)
                                } return !0
                        }.call(this), !this.elDistrict) {
                        var n = document.createElement("select");
                        this.elDistrict = n, i.appendChild(this.elDistrict)
                    }
                    this.elDistrict.classList.add(this.options.districtClassName), this.elDistrict.name = this.options.districtFieldName, this.options.disabled && this.elDistrict.setAttribute("disabled", !0);
                    if (c.call(this), !this.elZipcode && this.options.hasZipcode) {
                        var s = document.createElement("input");
                        this.elZipcode = s, i.appendChild(this.elZipcode), this.elZipcode.type = this.options.hiddenZipcode ? "hidden" : "text", this.elZipcode.name = this.options.zipcodeFieldName, this.elZipcode.classList.add(this.options.zipcodeClassName), this.elZipcode.readOnly = !0, this.options.lang && "en-us" === this.options.lang ? this.elZipcode.placeholder = "ZIP code" : this.elZipcode.placeholder = "????????????", this.elZipcode.size = 3, this.elZipcode.autocomplete = "off", this.options.disabled && this.elZipcode.setAttribute("disabled", !0)
                    }
                    this.el.appendChild(i)
                }.call(this), this.options.bootstrapStyle && function() {
                    var i = document.createDocumentFragment();
                    this.elCounty.setAttribute("class", "form-control"), this.elDistrict.setAttribute("class", "form-control"), this.options.hasZipcode && this.elZipcode.setAttribute("class", "form-control");
                    var t = document.createElement("div");
                    t.setAttribute("class", "form-group");
                    var n = t.cloneNode();
                    n.appendChild(this.elCounty), i.appendChild(n);
                    var s = t.cloneNode();
                    if (s.appendChild(this.elDistrict), i.appendChild(s), this.options.hasZipcode) {
                        var o = t.cloneNode();
                        o.appendChild(this.elZipcode), i.appendChild(o)
                    }
                    this.el.appendChild(i)
                }.call(this),
                function() {
                    var i = function() {
                        var i = this.elCounty.querySelector("option:checked"),
                            t = i.getAttribute("data-index");
                        c.call(this, t), this.options.hasZipcode && (this.elZipcode.value = "")
                    }.bind(this);
                    this.elCounty.onchange = i
                }.call(this),
                function() {
                    var i = function() {
                        var i = this.elDistrict.querySelector("option:checked"),
                            t = i.dataset.zipcode || "";
                        (this.options.hasZipcode || this.elZipcode) && (this.elZipcode.value = t)
                    }.bind(this);
                    this.elDistrict.onchange = i
                }.call(this), l.call(this, this.options.countyValue, this.options.districtValue), this
        }

        function u(i, t) {
            return i ? i && t ? t.querySelector(i) : document.querySelector(i) : null
        }

        function c() {
            for (var i = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : null, t = this.elDistrict; t.firstChild;) t.removeChild(t.firstChild);
            if (this.options.lang && "en-us" === this.options.lang ? t.options.add(new Option("Select District", "")) : t.options.add(new Option("????????????", "")), !i) return !0;
            for (var n = function(i) {
                    var t = this.options.only,
                        n = "string" == typeof t;
                    if (!n && !Array.isArray(t)) return null;
                    n && (t = [t]);
                    var s = null;
                    return t.forEach(function(t) {
                        if (-1 !== t.indexOf(i)) {
                            var n = t.lastIndexOf("@");
                            return -1 !== n ? s = t.substring(n + 1).split("|") : void 0
                        }
                    }), s
                }.call(this, this.elCounty.value), s = function(i) {
                    var t = this.options.except,
                        n = "string" == typeof t;
                    if (!n && !Array.isArray(t)) return null;
                    n && (t = [t]);
                    var s = null;
                    return t.forEach(function(t) {
                        if (-1 !== t.indexOf(i)) {
                            var n = t.lastIndexOf("@");
                            return -1 !== n ? s = t.substring(n + 1).split("|") : void 0
                        }
                    }), s
                }.call(this, this.elCounty.value), o = 0, e = this.data.districts[i][0].length - 1; o <= e; o++)
                if (!(n && -1 === n.indexOf(this.data.districts[i][0][o]) || s && -1 !== s.indexOf(this.data.districts[i][0][o]))) {
                    var a = new Option(this.data.districts[i][0][o], this.data.districts[i][0][o]);
                    a.dataset.zipcode = this.data.districts[i][1][o], t.options.add(a)
                } return !0
        }

        function l() {
            var i = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : null,
                t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : null,
                n = document.createEvent("Event");
            n.initEvent("change", !0, !0), i && (this.elCounty.value = i, this.elCounty.dispatchEvent(n)), t && (this.elDistrict.value = t, this.elDistrict.dispatchEvent(n))
        }
        h.prototype.getVersion = function() {
            return console.log("Your tw-city-selector.js is v" + this.VERSION), this
        }, h.prototype.setValue = function() {
            var i = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : null,
                t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : null;
            return l.call(this, i, t), this
        }, h.prototype.reset = function() {
            return function() {
                this.elCounty.selectedIndex = 0, c.call(this), this.options.hasZipcode && (this.elZipcode.value = "");
                return this
            }.call(this), this
        }, String.prototype.includes || (String.prototype.includes = function(i, t) {
            if (i instanceof RegExp) throw TypeError("first argument must not be a RegExp");
            return void 0 === t && (t = 0), -1 !== this.indexOf(i, t)
        })
    }]).default
});
//# sourceMappingURL=tw-city-selector.js.map