.class public interface abstract Lcom/google/ads/mediation/MediationInterstitialAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADDITIONA",
        "L_PARAMETERS::Lo/AppsFlyerLibCore$e;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lo/set<",
        "TADDITIONA",
        "L_PARAMETERS;",
        "TSERVER_PARAMETERS;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract requestInterstitialAd(Lo/AppsFlyerProperties;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lo/setCustomData;Lo/AppsFlyerLibCore$e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppsFlyerProperties;",
            "Landroid/app/Activity;",
            "TSERVER_PARAMETERS;",
            "Lo/setCustomData;",
            "TADDITIONA",
            "L_PARAMETERS;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showInterstitial()V
.end method
