--[[                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
                                                                                                                                                                                      
         tttt          FFFFFFFFFFFFFFFFFFFFFF                kkkkkkkk                          PPPPPPPPPPPPPPPPP   lllllll                           tttt                              
      ttt:::t          F::::::::::::::::::::F                k::::::k                          P::::::::::::::::P  l:::::l                        ttt:::t                              
      t:::::t          F::::::::::::::::::::F                k::::::k                          P::::::PPPPPP:::::P l:::::l                        t:::::t                              
      t:::::t          FF::::::FFFFFFFFF::::F                k::::::k                          PP:::::P     P:::::Pl:::::l                        t:::::t                              
ttttttt:::::ttttttt      F:::::F       FFFFFFaaaaaaaaaaaaa    k:::::k    kkkkkkk eeeeeeeeeeee    P::::P     P:::::P l::::l   aaaaaaaaaaaaa  ttttttt:::::ttttttt        eeeeeeeeeeee    
t:::::::::::::::::t      F:::::F             a::::::::::::a   k:::::k   k:::::kee::::::::::::ee  P::::P     P:::::P l::::l   a::::::::::::a t:::::::::::::::::t      ee::::::::::::ee  
t:::::::::::::::::t      F::::::FFFFFFFFFF   aaaaaaaaa:::::a  k:::::k  k:::::ke::::::eeeee:::::eeP::::PPPPPP:::::P  l::::l   aaaaaaaaa:::::at:::::::::::::::::t     e::::::eeeee:::::ee
tttttt:::::::tttttt      F:::::::::::::::F            a::::a  k:::::k k:::::ke::::::e     e:::::eP:::::::::::::PP   l::::l            a::::atttttt:::::::tttttt    e::::::e     e:::::e
      t:::::t            F:::::::::::::::F     aaaaaaa:::::a  k::::::k:::::k e:::::::eeeee::::::eP::::PPPPPPPPP     l::::l     aaaaaaa:::::a      t:::::t          e:::::::eeeee::::::e
      t:::::t            F::::::FFFFFFFFFF   aa::::::::::::a  k:::::::::::k  e:::::::::::::::::e P::::P             l::::l   aa::::::::::::a      t:::::t          e:::::::::::::::::e 
      t:::::t            F:::::F            a::::aaaa::::::a  k:::::::::::k  e::::::eeeeeeeeeee  P::::P             l::::l  a::::aaaa::::::a      t:::::t          e::::::eeeeeeeeeee  
      t:::::t    tttttt  F:::::F           a::::a    a:::::a  k::::::k:::::k e:::::::e           P::::P             l::::l a::::a    a:::::a      t:::::t    tttttte:::::::e           
      t::::::tttt:::::tFF:::::::FF         a::::a    a:::::a k::::::k k:::::ke::::::::e        PP::::::PP          l::::::la::::a    a:::::a      t::::::tttt:::::te::::::::e          
      tt::::::::::::::tF::::::::FF         a:::::aaaa::::::a k::::::k  k:::::ke::::::::eeeeeeeeP::::::::P          l::::::la:::::aaaa::::::a      tt::::::::::::::t e::::::::eeeeeeee  
        tt:::::::::::ttF::::::::FF          a::::::::::aa:::ak::::::k   k:::::kee:::::::::::::eP::::::::P          l::::::l a::::::::::aa:::a       tt:::::::::::tt  ee:::::::::::::e  
          ttttttttttt  FFFFFFFFFFF           aaaaaaaaaa  aaaakkkkkkkk    kkkkkkk eeeeeeeeeeeeeePPPPPPPPPP          llllllll  aaaaaaaaaa  aaaa         ttttttttttt      eeeeeeeeeeeeee  
                                                                                                                     
   tFakePlate made by TrapZed#1725

   https://github.com/trapzed
   
   🛠️ tDev : https://discord.gg/WEP4CuuQzd
]]--

Config = {}

-- Pour les bases California, mettez la valeur : ::{korioz#0110}:: devant les triggers exemple : 
--Config.events = {
--    ["esx:getSharedObject"] = "::{korioz#0110}::esx:getSharedObject",
--}

Config.Events = {
    ["esx:getSharedObject"] = "esx:getSharedObject",
    ["esx:showNotification"] = "esx:showNotification"
}

-- Bannière sur le menu
Config.BannerName = "Plaque"

-- Prix pour modifier la plaque
Config.PriceChangePlate = 2000

-- Prix pour supprimer la plaque
Config.PriceDeletePlate = 5000

--Position de la zone
Config.Position = vector3(-1315.986, -1263.317, 3.59)