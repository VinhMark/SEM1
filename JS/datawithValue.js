var rankFlavor= function(flavor){
  for(var i = rankFlavor.len;i--;){
    if(rankFlavor[i] === flavor){
      return flavor + ' is number ' + (i+1)+ '.'
    }
  }
  return flavor + ' is not among my top 10'
};
rankFlavor[0] = "Chocolate Fudge Brownie"
rankFlavor[1] = "Half Baked"
rankFlavor[2] = "New York "
rankFlavor[3] = "Coffee"
rankFlavor[4] = "Everything"
rankFlavor[5] = "Mud"
rankFlavor[6] = "Keramel"
rankFlavor[7] = "Cinname"
rankFlavor[8] = "Milk"
rankFlavor[9] = "Mission"
rankFlavor.len = 10;
rankFlavor("New York ");
/*
New York  is number 3.
*/

rankFlavor("Phi cu nho");
/*
Phi cu nho is not among my top 10
*/
