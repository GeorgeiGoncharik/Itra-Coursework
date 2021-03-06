import Foundation
/**
 The 2-letter ISO 3166-1 code of the country you want to get headlines for.
 Possible options: ae ar at au be bg br ca ch cn co cu cz de eg fr gb gr hk hu id ie il in it jp kr
 lt lv ma mx my ng nl no nz ph pl pt ro rs ru sa se sg si sk th tr tw ua us ve za .
 Note: you can't mix this param with the sources param.
 */
enum Countries: String, CaseIterable {
    case argentina = "ar"
    case australia = "au"
    case austria = "at"
    case belgium = "be"
    case brazil = "br"
    case bulgaria = "bg"
    case canada = "ca"
    case china = "cn"
    case colombia = "co"
    case cuba = "cu"
    case czechRepublic = "cz"
    case egypt = "eg"
    case france = "fr"
    case germany = "de"
    case greece = "gr"
    case hongKong = "hk"
    case hungary = "hu"
    case india = "in"
    case indonesia = "id"
    case ireland = "ie"
    case israel = "il"
    case italy = "it"
    case japan = "jp"
    case latvia = "lv"
    case lithuania = "lt"
    case malaysia = "my"
    case mexico = "mx"
    case morocco = "ma"
    case netherlands = "nl"
    case newZeeland = "nz"
    case nigeria = "ng"
    case norway = "no"
    case philippines = "ph"
    case poland = "pl"
    case portugal = "pt"
    case romania = "ro"
    case russia = "ru"
    case saudiArabia = "sa"
    case serbia = "rs"
    case singapore = "sg"
    case slovakia = "sk"
    case slovenia = "si"
    case southAfrica = "za"
    case southKorea = "kr"
    case sweden = "se"
    case switzerland = "ch"
    case taiwan = "tw"
    case thailand = "th"
    case turkey = "tr"
    case uae = "ae"
    case ukraine = "ua"
    case unitedKingdom = "gb"
    case unitedStates = "us"
    case venezuela = "ve"
}
