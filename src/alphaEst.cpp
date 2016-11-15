/*****************************/
/* Jiaxing Lin               */
/* 05-13-2016                :w*/
/* Estimate Alpha without    */
/*****************************/

#include "Rcpp.h"

using namespace std;
using namespace Rcpp;

//[[Rcpp::export]]
List alphaEst(
    int m,
    Rcpp::NumericVector dtime,
    Rcpp::NumericVector delta,
    Rcpp::NumericVector g) 
{
  double d = 0;
  double r = 0;
  /*	
   int*    dt = new int[i_dt.size()];
   int* Delta = new int[i_Delta.size()];
   int*     G = new int[i_G.size()];
   for(int i=0; i<i_dt.size(); i++)
   dt[i]=i_dt[i];
   for(int i=0; i<i_G.size(); i++)
   G[i]=i_G[i];
   for(int i=0; i<i_Delta.size(); i++)
   Delta[i]=i_Delta[i];  	 
   */	
  int NPat = dtime.size();	
  for(int i=0; i < NPat; i++)
  {
    if(dtime[i] == m && delta[i] == 1)
      d++;
    if(dtime[i] > m)
      r++; 	
  } 	
  double alpha = r/(r+d);
  return List::create(
    Named("alphaEst")
    = alpha
  );
  
}




