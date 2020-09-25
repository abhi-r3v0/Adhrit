.class public Lin/juspay/vies/Card;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private bin:Ljava/lang/String;

.field private maskedCard:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/juspay/vies/Card;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getBin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/juspay/vies/Card;->bin:Ljava/lang/String;

    return-object v0
.end method

.method public getMaskedCard()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/juspay/vies/Card;->maskedCard:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/vies/Card;->alias:Ljava/lang/String;

    return-void
.end method

.method public setBin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/vies/Card;->bin:Ljava/lang/String;

    return-void
.end method

.method public setMaskedCard(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/vies/Card;->maskedCard:Ljava/lang/String;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "bin"

    invoke-virtual {p0}, Lin/juspay/vies/Card;->getBin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "alias"

    invoke-virtual {p0}, Lin/juspay/vies/Card;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "masked_card"

    invoke-virtual {p0}, Lin/juspay/vies/Card;->getMaskedCard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CARD"

    const-string v3, "Error while converting to JSON"

    invoke-static {v2, v3, v1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lin/juspay/vies/Card;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
