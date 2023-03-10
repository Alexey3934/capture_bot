IB_ru = ->{IB.call("ð·ðº Ð ÑÑÑÐºÐ¸Ð¹ ð·ðº", "ru/Ð²ÑÐ±ÑÐ°Ð½Ð½ÑÐ¹ ÑÐ·ÑÐº")}
IB_en = ->{IB.call("ðºð¸ English ðºð¸", "en/Ð²ÑÐ±ÑÐ°Ð½Ð½ÑÐ¹ ÑÐ·ÑÐº")}
IB_es = ->{IB.call("ðªð¸ EspaÃ±ol ðªð¸", "es/Ð²ÑÐ±ÑÐ°Ð½Ð½ÑÐ¹ ÑÐ·ÑÐº")}
IB_cn = ->{IB.call("ð¨ð³ ä¸­åèªæ ð¹ð¼",  "cn/Ð²ÑÐ±ÑÐ°Ð½Ð½ÑÐ¹ ÑÐ·ÑÐº")}
IB_fr = ->{IB.call("ð«ð· FranÃ§ais ð«ð·", "fr/Ð²ÑÐ±ÑÐ°Ð½Ð½ÑÐ¹ ÑÐ·ÑÐº")}

Rand_smile = ->{Smiles_other[rand(Smiles_other.size - 1)]}
IBs_smiles = ->(line){
    buttons = []
    line.each do |obj|
        smile   = obj.keys.first
        boolean = obj.values.first
        buttons <<  IB.call(smile,           "#{$lg}/#{boolean}" )
    end
    buttons
}


Smile_lines = {
    bear:    [{'ð»'=>'true'},  {'ð¦'=>'false'}, {'ð¦'=>'false'}, {'ð'=>'false'}],
    turtle:  [{'ð¦¨'=>'false'}, {'ð¢'=>'true'},  {'ð¦'=>'false'}, {'ð'=>'false'}],
    dino:    [{'ð¦'=>'false'}, {'ð¦'=>'false'}, {'ð¦'=>'true'},  {'ð¦«'=>'false'}],
    whale:   [{'ð³'=>'true'},  {'ð¦'=>'false'}, {'ð'=>'false'}, {'ð¦'=>'false'}],
    chicken: [{'ð¥'=>'true'},  {'ðµ'=>'false'}, {'ð¼'=>'false'}, {'ð¶'=>'false'}],
    kitten:  [{'ð'=>'false'}, {'ð±'=>'true'},  {'ð·'=>'false'}, {'ð'=>'false'}],
    cow:     [{'ð'=>'true'},  {'ð¦§'=>'false'}, {'ð '=>'false'}, {'ð'=>'false'}],
    horse:   [{'ð¦«'=>'false'}, {'ð'=>'false'}, {'ð¦'=>'false'}, {'ð¦'=>'true'}],
    crab:    [{'ðº'=>'false'}, {'ð'=>'false'}, {'ð¦'=>'true'},  {'ð'=>'false'}],
    dog:     [{'ð¦'=>'false'}, {'ð©'=>'true'},  {'ð¦§'=>'false'}, {'ðª±'=>'false'}]  
}


IM_langs        = ->{IM.call([IB_ru.call, IB_en.call, IB_es.call, IB_cn.call, IB_fr.call])}
IM_smiles       = ->(line){IM.call([IBs_smiles.call(line).sort_by{ rand } ])}
IM_links    = ->(chat_link, channel_link){IM.call([
    IB.call(T_chat[$lg], nil, chat_link),
    IB.call(T_channel[$lg], nil, channel_link)
    ])}
IM_channel_link = ->(link){IM.call(IB.call(T_channel[$lg], nil, link))}


T_chat = {
    ru:'Kozmap\'s Gang ÑÐ°Ñ',
    en:'Kozmap\'s Gang Chat',
    es:'"Kozmap\'s Gang" Chat',
    cn:'âKozmap Gangâ èå¤©',
    fr: '"Kozmap Gang" Chat'
}

T_channel = {
    ru:'ÐÐ°Ð½Ð°Ð» Kozmap\'a',
    en:'Kozmap\'s Scans Service Channel',
    es:'Channel de Kozmap',
    cn:'Kozmap çä¸»é »é',
    fr:'Canal de service de Kozmap'
}


IM_offer_links = {
    ru:->{IM.call([
        IB.call(T_chat[$lg], "ru/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÑÐ°Ñ"), 
        IB.call(T_channel[$lg],    "ru/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÐºÐ°Ð½Ð°Ð»")
        ])},
    en:->{IM.call([
        IB.call(T_chat[$lg],             "en/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÑÐ°Ñ"), 
        IB.call(T_channel[$lg], "en/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÐºÐ°Ð½Ð°Ð»")
        ])},
    es:->{IM.call([
        IB.call(T_chat[$lg], "es/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÑÐ°Ñ"), 
        IB.call(T_channel[$lg],     "es/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÐºÐ°Ð½Ð°Ð»")
        ])},
    cn:->{IM.call([
        IB.call(T_chat[$lg],     "cn/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÑÐ°Ñ"), 
        IB.call(T_channel[$lg],         "cn/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÐºÐ°Ð½Ð°Ð»")
        ])},
    fr:->{IM.call([
        IB.call(T_chat[$lg],         "fr/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÑÐ°Ñ"), 
        IB.call(T_channel[$lg], "fr/Ð·Ð°Ð¿ÑÐ¾Ñ_Ð½Ð°_ÐºÐ°Ð½Ð°Ð»")
        ])}
}