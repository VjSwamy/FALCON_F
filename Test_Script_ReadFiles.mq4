//+------------------------------------------------------------------+
//|                                                         Test.mq4 |
//|                                                 Vladimir Zhbanko |
//+------------------------------------------------------------------+

#property copyright "Copyright 2018, Vladimir Zhbanko"
#property link      "https://vladdsm.github.io/myblog_attempt/"
#property version "1.00"
#property strict
#include <096_ReadMarketTypeFromCSV.mqh>
#include <12_ReadPredictionFromAI.mqh>
#include <14_ReadPriceChangePredictionFromAI.mqh>
//+------------------------------------------------------------------+
//| Test Script to verify market statuses and see predicted direction on multiple timeframes

int      Market;
int      MarketDirectionM1;
double   PredictedChangeM1;
int      MarketDirectionM15;
double   PredictedChangeM15;
int      MarketDirectionM60;
double   PredictedChangeM60;


void OnStart()
{
  
Market = ReadMarketFromCSV(Symbol(), 15); //Retrieving Market Type
MarketDirectionM1 = ReadPredictionFromAI(Symbol(), 1); //Retrieving Market Type
PredictedChangeM1 = ReadPriceChangePredictionFromAI(Symbol(), 1); //Retrieving Market Type
MarketDirectionM15 = ReadPredictionFromAI(Symbol(), 15); //Retrieving Market Type
PredictedChangeM15 = ReadPriceChangePredictionFromAI(Symbol(), 15); //Retrieving Market Type
MarketDirectionM60 = ReadPredictionFromAI(Symbol(), 60); //Retrieving Market Type
PredictedChangeM60 = ReadPriceChangePredictionFromAI(Symbol(), 60); //Retrieving Market Type

Comment("Market type identified is: ", Market, "\n",
        "Market Direction predicted [M1]:  ", MarketDirectionM1, "\n",
        "Market Change predicted    [M1]:  ", PredictedChangeM1, "\n",
        "Market Direction predicted [M15]: ", MarketDirectionM15, "\n",
        "Market Change predicted    [M15]: ", PredictedChangeM15, "\n",
        "Market Direction predicted [M60]: ", MarketDirectionM60, "\n",
        "Market Change predicted    [M60]: ", PredictedChangeM60);

} 


