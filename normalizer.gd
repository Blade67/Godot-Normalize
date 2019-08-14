extends Node

const chars = {
    "105": "i",
    "192": "A",
    "193": "A",
    "194": "A",
    "195": "A",
    "196": "A",
    "197": "A",
    "199": "C",
    "200": "E",
    "201": "E",
    "202": "E",
    "203": "E",
    "204": "I",
    "205": "I",
    "206": "I",
    "207": "I",
    "209": "N",
    "210": "O",
    "211": "O",
    "212": "O",
    "213": "O",
    "214": "O",
    "216": "O",
    "217": "U",
    "218": "U",
    "219": "U",
    "220": "U",
    "221": "Y",
    "224": "a",
    "225": "a",
    "226": "a",
    "227": "a",
    "228": "a",
    "229": "a",
    "231": "c",
    "232": "e",
    "233": "e",
    "234": "e",
    "235": "e",
    "236": "i",
    "237": "i",
    "238": "i",
    "239": "i",
    "241": "n",
    "242": "o",
    "243": "o",
    "244": "o",
    "245": "o",
    "246": "o",
    "248": "o",
    "249": "u",
    "250": "u",
    "251": "u",
    "252": "u",
    "253": "y",
    "255": "y",
    "256": "A",
    "257": "a",
    "258": "A",
    "259": "a",
    "260": "A",
    "261": "a",
    "262": "C",
    "263": "c",
    "264": "C",
    "265": "c",
    "266": "C",
    "267": "c",
    "268": "C",
    "269": "c",
    "270": "D",
    "271": "d",
    "272": "D",
    "273": "d",
    "274": "E",
    "275": "e",
    "276": "E",
    "277": "e",
    "278": "E",
    "279": "e",
    "280": "E",
    "281": "e",
    "282": "E",
    "283": "e",
    "284": "G",
    "285": "g",
    "286": "G",
    "287": "g",
    "288": "G",
    "289": "g",
    "290": "G",
    "291": "g",
    "292": "H",
    "293": "h",
    "294": "H",
    "295": "h",
    "296": "I",
    "297": "i",
    "298": "I",
    "299": "i",
    "300": "I",
    "301": "i",
    "302": "I",
    "303": "i",
    "304": "I",
    "308": "J",
    "309": "j",
    "310": "K",
    "311": "k",
    "313": "L",
    "314": "l",
    "315": "L",
    "316": "l",
    "317": "L",
    "318": "l",
    "319": "L",
    "320": "l",
    "321": "L",
    "322": "l",
    "323": "N",
    "324": "n",
    "325": "N",
    "326": "n",
    "327": "N",
    "328": "n",
    "332": "O",
    "333": "o",
    "334": "O",
    "335": "o",
    "336": "O",
    "337": "o",
    "338": "O",
    "339": "o",
    "340": "R",
    "341": "r",
    "342": "R",
    "343": "r",
    "344": "R",
    "345": "r",
    "346": "S",
    "347": "s",
    "348": "S",
    "349": "s",
    "350": "S",
    "351": "s",
    "352": "S",
    "353": "s",
    "354": "T",
    "355": "t",
    "356": "T",
    "357": "t",
    "358": "T",
    "359": "t",
    "360": "U",
    "361": "u",
    "362": "U",
    "363": "u",
    "364": "U",
    "365": "u",
    "366": "U",
    "367": "u",
    "368": "U",
    "369": "u",
    "370": "U",
    "371": "u",
    "372": "W",
    "373": "w",
    "374": "Y",
    "375": "y",
    "376": "Y",
    "377": "Z",
    "378": "z",
    "379": "Z",
    "380": "z",
    "381": "Z",
    "382": "z",
    "384": "b",
    "385": "B",
    "386": "B",
    "387": "b",
    "390": "O",
    "391": "C",
    "392": "c",
    "393": "D",
    "394": "D",
    "395": "D",
    "396": "d",
    "398": "E",
    "400": "E",
    "401": "F",
    "402": "f",
    "403": "G",
    "407": "I",
    "408": "K",
    "409": "k",
    "410": "l",
    "412": "M",
    "413": "N",
    "414": "n",
    "415": "O",
    "416": "O",
    "417": "o",
    "420": "P",
    "421": "p",
    "422": "R",
    "427": "t",
    "428": "T",
    "429": "t",
    "430": "T",
    "431": "U",
    "432": "u",
    "434": "V",
    "435": "Y",
    "436": "y",
    "437": "Z",
    "438": "z",
    "461": "A",
    "462": "a",
    "463": "I",
    "464": "i",
    "465": "O",
    "466": "o",
    "467": "U",
    "468": "u",
    "477": "e",
    "484": "G",
    "485": "g",
    "486": "G",
    "487": "g",
    "488": "K",
    "489": "k",
    "490": "O",
    "491": "o",
    "500": "G",
    "501": "g",
    "504": "N",
    "505": "n",
    "512": "A",
    "513": "a",
    "514": "A",
    "515": "a",
    "516": "E",
    "517": "e",
    "518": "E",
    "519": "e",
    "520": "I",
    "521": "i",
    "522": "I",
    "523": "i",
    "524": "O",
    "525": "o",
    "526": "O",
    "527": "o",
    "528": "R",
    "529": "r",
    "530": "R",
    "531": "r",
    "532": "U",
    "533": "u",
    "534": "U",
    "535": "u",
    "536": "S",
    "537": "s",
    "538": "T",
    "539": "t",
    "542": "H",
    "543": "h",
    "544": "N",
    "545": "d",
    "548": "Z",
    "549": "z",
    "550": "A",
    "551": "a",
    "552": "E",
    "553": "e",
    "558": "O",
    "559": "o",
    "562": "Y",
    "563": "y",
    "564": "l",
    "565": "n",
    "566": "t",
    "567": "j",
    "570": "A",
    "571": "C",
    "572": "c",
    "573": "L",
    "574": "T",
    "575": "s",
    "576": "z",
    "579": "B",
    "580": "U",
    "581": "V",
    "582": "E",
    "583": "e",
    "584": "J",
    "585": "j",
    "586": "Q",
    "587": "q",
    "588": "R",
    "589": "r",
    "590": "Y",
    "591": "y",
    "592": "a",
    "593": "a",
    "595": "b",
    "596": "o",
    "597": "c",
    "598": "d",
    "599": "d",
    "600": "e",
    "603": "e",
    "604": "e",
    "605": "e",
    "606": "e",
    "607": "j",
    "608": "g",
    "609": "g",
    "610": "g",
    "613": "h",
    "614": "h",
    "616": "i",
    "618": "i",
    "619": "l",
    "620": "l",
    "621": "l",
    "623": "m",
    "624": "m",
    "625": "m",
    "626": "n",
    "627": "n",
    "628": "n",
    "629": "o",
    "633": "r",
    "634": "r",
    "635": "r",
    "636": "r",
    "637": "r",
    "638": "r",
    "639": "r",
    "640": "r",
    "641": "r",
    "642": "s",
    "647": "t",
    "648": "t",
    "649": "u",
    "651": "v",
    "652": "v",
    "653": "w",
    "654": "y",
    "655": "y",
    "656": "z",
    "657": "z",
    "663": "c",
    "665": "b",
    "666": "e",
    "667": "g",
    "668": "h",
    "669": "j",
    "670": "k",
    "671": "l",
    "672": "q",
    "686": "h",
    "688": "h",
    "690": "j",
    "691": "r",
    "692": "r",
    "694": "r",
    "695": "w",
    "696": "y",
    "737": "l",
    "738": "s",
    "739": "x",
    "780": "v",
    "829": "x",
    "851": "x",
    "867": "a",
    "868": "e",
    "869": "i",
    "870": "o",
    "871": "u",
    "872": "c",
    "873": "d",
    "874": "h",
    "875": "m",
    "876": "r",
    "877": "t",
    "878": "v",
    "879": "x",
    "7424": "a",
    "7427": "b",
    "7428": "c",
    "7429": "d",
    "7431": "e",
    "7432": "e",
    "7433": "i",
    "7434": "j",
    "7435": "k",
    "7436": "l",
    "7437": "m",
    "7438": "n",
    "7439": "o",
    "7440": "o",
    "7441": "o",
    "7442": "o",
    "7443": "o",
    "7446": "o",
    "7447": "o",
    "7448": "p",
    "7449": "r",
    "7450": "r",
    "7451": "t",
    "7452": "u",
    "7453": "u",
    "7454": "u",
    "7455": "m",
    "7456": "v",
    "7457": "w",
    "7458": "z",
    "7522": "i",
    "7523": "r",
    "7524": "u",
    "7525": "v",
    "7680": "A",
    "7681": "a",
    "7682": "B",
    "7683": "b",
    "7684": "B",
    "7685": "b",
    "7686": "B",
    "7687": "b",
    "7690": "D",
    "7691": "d",
    "7692": "D",
    "7693": "d",
    "7694": "D",
    "7695": "d",
    "7696": "D",
    "7697": "d",
    "7698": "D",
    "7699": "d",
    "7704": "E",
    "7705": "e",
    "7706": "E",
    "7707": "e",
    "7710": "F",
    "7711": "f",
    "7712": "G",
    "7713": "g",
    "7714": "H",
    "7715": "h",
    "7716": "H",
    "7717": "h",
    "7718": "H",
    "7719": "h",
    "7720": "H",
    "7721": "h",
    "7722": "H",
    "7723": "h",
    "7724": "I",
    "7725": "i",
    "7728": "K",
    "7729": "k",
    "7730": "K",
    "7731": "k",
    "7732": "K",
    "7733": "k",
    "7734": "L",
    "7735": "l",
    "7738": "L",
    "7739": "l",
    "7740": "L",
    "7741": "l",
    "7742": "M",
    "7743": "m",
    "7744": "M",
    "7745": "m",
    "7746": "M",
    "7747": "m",
    "7748": "N",
    "7749": "n",
    "7750": "N",
    "7751": "n",
    "7752": "N",
    "7753": "n",
    "7754": "N",
    "7755": "n",
    "7764": "P",
    "7765": "p",
    "7766": "P",
    "7767": "p",
    "7768": "R",
    "7769": "r",
    "7770": "R",
    "7771": "r",
    "7774": "R",
    "7775": "r",
    "7776": "S",
    "7777": "s",
    "7778": "S",
    "7779": "s",
    "7786": "T",
    "7787": "t",
    "7788": "T",
    "7789": "t",
    "7790": "T",
    "7791": "t",
    "7792": "T",
    "7793": "t",
    "7794": "U",
    "7795": "u",
    "7796": "U",
    "7797": "u",
    "7798": "U",
    "7799": "u",
    "7804": "V",
    "7805": "v",
    "7806": "V",
    "7807": "v",
    "7808": "W",
    "7809": "w",
    "7810": "W",
    "7811": "w",
    "7812": "W",
    "7813": "w",
    "7814": "W",
    "7815": "w",
    "7816": "W",
    "7817": "w",
    "7818": "X",
    "7819": "x",
    "7820": "X",
    "7821": "x",
    "7822": "Y",
    "7823": "y",
    "7824": "Z",
    "7825": "z",
    "7826": "Z",
    "7827": "z",
    "7828": "Z",
    "7829": "z",
    "7835": "s",
    "7840": "A",
    "7841": "a",
    "7842": "A",
    "7843": "a",
    "7864": "E",
    "7865": "e",
    "7866": "E",
    "7867": "e",
    "7868": "E",
    "7869": "e",
    "7880": "I",
    "7881": "i",
    "7882": "I",
    "7883": "i",
    "7884": "O",
    "7885": "o",
    "7886": "O",
    "7887": "o",
    "7908": "U",
    "7909": "u",
    "7910": "U",
    "7911": "u",
    "7922": "Y",
    "7923": "y",
    "7924": "Y",
    "7925": "y",
    "7926": "Y",
    "7927": "y",
    "7928": "Y",
    "7929": "y",
    "8305": "i",
    "8341": "h",
    "8342": "k",
    "8343": "l",
    "8344": "m",
    "8345": "n",
    "8346": "p",
    "8347": "s",
    "8348": "t",
    "8450": "c",
    "8458": "g",
    "8459": "h",
    "8460": "h",
    "8461": "h",
    "8464": "i",
    "8465": "i",
    "8466": "l",
    "8467": "l",
    "8468": "l",
    "8469": "n",
    "8472": "p",
    "8473": "p",
    "8474": "q",
    "8475": "r",
    "8476": "r",
    "8477": "r",
    "8484": "z",
    "8488": "z",
    "8492": "b",
    "8493": "c",
    "8495": "e",
    "8496": "e",
    "8497": "f",
    "8498": "F",
    "8499": "m",
    "8500": "o",
    "8506": "q",
    "8513": "g",
    "8514": "l",
    "8515": "l",
    "8516": "y",
    "8517": "d",
    "8518": "d",
    "8519": "e",
    "8520": "i",
    "8521": "j",
    "8526": "f",
    "8579": "C",
    "8580": "c",
    "8765": "s",
    "8766": "s",
    "8959": "z",
    "8999": "x",
    "9746": "x",
    "9776": "i",
    "9866": "i",
    "10005": "x",
    "10006": "x",
    "10007": "x",
    "10008": "x",
    "10625": "z",
    "10626": "z",
    "11362": "L",
    "11364": "R",
    "11365": "a",
    "11366": "t",
    "11373": "A",
    "11374": "M",
    "11375": "A",
    "11390": "S",
    "11391": "Z",
    "19904": "i",
    "42893": "H",
    "42922": "H",
    "42923": "E",
    "42924": "G",
    "42925": "L",
    "42928": "K",
    "42929": "T",
    "62937": "x"
}

func normalize(string):
    var n = ""
    for s in range(string.length()):
        var a = string[s].to_ascii()
        if chars.keys().find(str(a[0])) >= 0:
            n += chars[str(a[0])]
        else:
            n += string[s]
    return n
