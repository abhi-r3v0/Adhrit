.class public Lorg/npci/upi/security/pinactivitycomponent/v;
.super Ljava/lang/Object;


# static fields
.field private static k:Landroid/os/ResultReceiver;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;

.field private d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONArray;

.field private g:Ljava/util/Locale;

.field private h:Lin/org/npci/commonlibrary/e;

.field private i:Ljava/lang/String;

.field private j:Lorg/npci/upi/security/pinactivitycomponent/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->e:Lorg/json/JSONObject;

    const-string v1, "txnId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->e:Lorg/json/JSONObject;

    const-string v2, "txnAmount"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->e:Lorg/json/JSONObject;

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->e:Lorg/json/JSONObject;

    const-string v4, "deviceId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->e:Lorg/json/JSONObject;

    const-string v5, "mobileNumber"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->e:Lorg/json/JSONObject;

    const-string v6, "payerAddr"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->e:Lorg/json/JSONObject;

    const-string v7, "payeeAddr"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "|"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->j:Lorg/npci/upi/security/pinactivitycomponent/i;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CL Trust Token"

    invoke-static {v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CL Trust Param Message"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->h:Lin/org/npci/commonlibrary/e;

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->i:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lin/org/npci/commonlibrary/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v1, "L20"

    const-string v2, "l20.message"

    invoke-direct {v0, p1, v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/npci/upi/security/pinactivitycomponent/CLServerResultReceiver;)V
    .locals 0

    sput-object p0, Lorg/npci/upi/security/pinactivitycomponent/v;->k:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 6

    const-string v0, "l09.message"

    const-string v1, "L09"

    const-string v2, "Common Library"

    new-instance v3, Lorg/npci/upi/security/pinactivitycomponent/i;

    invoke-direct {v3, p2}, Lorg/npci/upi/security/pinactivitycomponent/i;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->j:Lorg/npci/upi/security/pinactivitycomponent/i;

    :try_start_0
    const-string v3, "keyCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->a:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/npci/upi/security/pinactivitycomponent/d; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    :try_start_1
    const-string v3, "keyXmlPayload"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->b:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lin/org/npci/commonlibrary/e;

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Lin/org/npci/commonlibrary/e;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->h:Lin/org/npci/commonlibrary/e;
    :try_end_1
    .catch Lin/org/npci/commonlibrary/f; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/npci/upi/security/pinactivitycomponent/d; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    const-string v3, "controls"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Controls received: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->c:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v3, "Controls is not received. Setting MPIN as default. "

    invoke-static {v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    const-string v5, "PIN"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "subtype"

    const-string v5, "MPIN"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "dType"

    const-string v5, "NUM|ALPH"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "dLength"

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->c:Lorg/json/JSONObject;

    const-string v5, "CredAllowed"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_0
    :try_start_3
    const-string v3, "configuration"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Configuration received: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->d:Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v3, "Configuration is not received"

    invoke-static {v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_1
    :try_start_4
    const-string v3, "salt"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->e:Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/npci/upi/security/pinactivitycomponent/d; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    const-string v3, "trust"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->i:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/npci/upi/security/pinactivitycomponent/v;->a(Landroid/content/Context;)V
    :try_end_5
    .catch Lorg/npci/upi/security/pinactivitycomponent/d; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    const-string v0, "payInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Pay Info Received"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->f:Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    const-string v0, "Pay Info not received"

    invoke-static {v2, v0}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_2
    :try_start_7
    const-string v0, "languagePref"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/Locale;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, p1

    goto :goto_3

    :cond_3
    const-string v1, "en_US"

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->g:Ljava/util/Locale;

    invoke-static {v2, p1}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :catch_0
    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v0, "L15"

    const-string v1, "l15.message"

    invoke-direct {p1, p2, v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v0, "L14"

    const-string v1, "l14.message"

    invoke-direct {p1, p2, v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    :try_start_8
    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v2, "L17"

    const-string v3, "l17.message"

    invoke-direct {p1, p2, v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catch Lorg/npci/upi/security/pinactivitycomponent/d; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception p1

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/d;

    invoke-direct {v2, p2, v1, v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception p1

    throw p1

    :cond_5
    :try_start_9
    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v0, "L12"

    const-string v1, "l12.message"

    invoke-direct {p1, p2, v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_9
    .catch Lorg/npci/upi/security/pinactivitycomponent/d; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception p1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v1, "L13"

    const-string v2, "l13.message"

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    move-exception p1

    throw p1

    :catch_6
    move-exception p1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v1, "L11"

    const-string v2, "l11.message"

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_7
    move-exception p1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v1, "L10"

    const-string v2, "l10.message"

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :try_start_a
    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v2, "L08"

    const-string v3, "l08.message"

    invoke-direct {p1, p2, v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_a
    .catch Lin/org/npci/commonlibrary/f; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/npci/upi/security/pinactivitycomponent/d; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    move-exception p1

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/d;

    invoke-direct {v2, p2, v1, v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_9
    move-exception p1

    throw p1

    :catch_a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonLibraryException"

    invoke-static {v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v1, "L05"

    const-string v2, "l05.message"

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    :try_start_b
    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v0, "L06"

    const-string v1, "l06.message"

    invoke-direct {p1, p2, v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_b
    .catch Lorg/npci/upi/security/pinactivitycomponent/d; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    move-exception p1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/d;

    const-string v1, "L07"

    const-string v2, "l07.message"

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/npci/upi/security/pinactivitycomponent/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_c
    move-exception p1

    throw p1
.end method

.method public b()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->g:Ljava/util/Locale;

    return-object v0
.end method

.method public c()Lin/org/npci/commonlibrary/e;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->h:Lin/org/npci/commonlibrary/e;

    return-object v0
.end method

.method public d()Lorg/npci/upi/security/pinactivitycomponent/i;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/v;->j:Lorg/npci/upi/security/pinactivitycomponent/i;

    return-object v0
.end method

.method public e()Landroid/os/ResultReceiver;
    .locals 1

    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/v;->k:Landroid/os/ResultReceiver;

    return-object v0
.end method
