{
  services.zapret = {
    # enable = true;

    params = [
      "tpws --split-pos=host+1 --oob"
      "tpws --split-pos=1,sniext+1,host+1,midsld,endhost-1 --fix-seg --disorder"
      "tpws --split-pos=1,sniext+1,host+1,midsld,endhost-1 --fix-seg --oob --disorder"
      "nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=1,sniext+1,host+1,midsld-2,midsld,midsld+2,endhost-1"
    ];
    whitelist = [
      "youtube.com"
      "discord.com"
    ];
  };
}