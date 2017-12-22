data class Participants(var name:String, var homeRoom:String, var tickets:Array<String>){
    fun searchForNumber(inputNumber:String){
        this.tickets.forEach {
            val numArray = it.toCharArray()
            val matchCounts = (0 .. 2).count { numArray[it]==inputNumber[it] }
            when (matchCounts) {
                1 -> println("${homeRoom}, ${name}: 3rd Prize, $it")
                2 -> decorate { println("${homeRoom}, ${name}: 2nd Prize, $it") }
                3 -> decorate { println("${homeRoom}, ${name}: 1st Prize, $it") }
                else -> return@forEach
            }
        }
    }
    fun printAllTicketSorted(){
        println(name+":")
        println(tickets.sortedArray().forEach { println(it+"\n") })
    }

    override fun toString(): String {
        tickets.sortedArray().forEach {println(it)}
        return name
    }
}


fun generateFuzzValue():String{
    var fuzzValue = (Math.random()*1000).toInt().toString()
    if (fuzzValue.length == 1) fuzzValue = "00"+ fuzzValue
    else if (fuzzValue.length == 2) fuzzValue = "0" + fuzzValue
    println("fuzz value: $fuzzValue")
    return fuzzValue
}

fun runTest(){
    val fuzz = generateFuzzValue()
    allParticipants.forEach { it.searchForNumber(fuzz)}
}

fun displayTotalCount(){
    var count = 0
    allParticipants.forEach { count+=it.tickets.count() }
    println(count)
}

fun main(args: Array<String>) {
    //repeat(1,{runTest()})
    //allParticipants.forEach {decorate { println(it) } }
    //allParticipants.forEach { it.searchForNumber("914 ") }
    println("ShanghaiJincaiHighSchoolInternationalDivision".toCharArray().count())
    //displayTotalCount()
}

val Tonia = Participants("Tonia","E10-1", arrayOf("392","457","100","512","578","334","693","114"))
val Tristan = Participants("Tristan","E10-1", arrayOf("324","327","328","320","326", "329","325","777","768","001","917","403","321","827","721","367","801","542","531","243","723","912","765","666","454","191","696","999","889","971","545","199","090","049","072","609","888","333","024","555"))
val Angela = Participants("Angela","C10-2", arrayOf("197"))
val Suyiling = Participants("苏依琳","C10-1", arrayOf("106"))
val Ashley = Participants("Ashley","C10-2", arrayOf("138"))
val David = Participants("David", "Teacher", arrayOf("442","159"))
val Jieyier = Participants("解依儿","E11-2", arrayOf("924","320"))
val Marshall = Participants("Marshall","Teacher", arrayOf("000"))
val Caesar = Participants("Caesar","Teacher", arrayOf("621"))
val Lesllie = Participants("Lesllie","E8-2", arrayOf("765"))
val SoominKim = Participants("Soomin Kim","E11-1", arrayOf("409","333","037","216"))
val Maruko = Participants("Maruko","C10-1", arrayOf("361"))
val Jay = Participants ("Jay","E6-2", arrayOf("123","716,","666","911"))
val MinyLee = Participants("Miny Lee","E8-1", arrayOf("735","164"))
val Veronica = Participants ("Veronica","E8-1", arrayOf("267","422"))
val HyunSae = Participants("Hyun Sae","E6-1", arrayOf("798","224","916","246","642","701","222","122","029","119","911","666","924","712","271","217","000","001"))
val Michael = Participants("Michael","E6-1", arrayOf("112"))
val MineseopSo = Participants("Minseop So","E6-1", arrayOf("961"))
val Riku = Participants("Riku", "C12-2", arrayOf("027"))
val FlyBro = Participants("Fly Brother","Teacher", arrayOf("369"))
val Jackson = Participants("Jackson","E10-2", arrayOf("216"))
val Alvin = Participants("Alvin","E12", arrayOf("666"))
val Wally = Participants("Wally","E9-2", arrayOf("573"))
val Khloe = Participants("Khloe","Teacher", arrayOf("423"))
val Warran = Participants("Warran","E6-1",arrayOf("047"))
val Tracy = Participants("Tracy","E9-1", arrayOf("117","130","374"))
val Reylin = Participants("Reylin","E6-1", arrayOf("268"))
val Seika = Participants("Seika","E10-1", arrayOf("555"))
val Shizuka = Participants("Shizuka", "E12", arrayOf("311"))
val Gini = Participants("Gini","Guest", arrayOf("613"))
val Winston = Participants("Winston","E7-1", arrayOf("888","333"))
val Kun = Participants("Zhang Kun","Guest", arrayOf("239"))
val Rosa = Participants("Rosa","Guest", arrayOf("235"))

val allParticipants = arrayOf(
        Tonia,Tristan,Angela,Suyiling,Ashley,
        David,Jieyier,Marshall,Caesar,Lesllie,
        SoominKim,Maruko,Jay,MinyLee,Veronica,
        HyunSae,Michael,MineseopSo,Riku,FlyBro,
        Jackson,Alvin,Wally,Khloe,Warran,
        Tracy,Reylin,Seika,Shizuka,Gini,
        Winston,Kun,Rosa)

fun decorate(function: ()->Unit){
        println("******")
        function()
        println("******")
}
