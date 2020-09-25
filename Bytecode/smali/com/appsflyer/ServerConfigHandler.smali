.class public Lcom/appsflyer/ServerConfigHandler;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static ı(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    const-string v2, "disableProxy"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v2, "monitor"

    .line 25
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p0, :cond_1

    .line 1071
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez p0, :cond_0

    .line 1072
    new-instance p0, Lcom/appsflyer/internal/ai;

    invoke-direct {p0}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 1074
    :cond_0
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 29
    invoke-virtual {p0}, Lcom/appsflyer/internal/ai;->ǃ()V

    goto :goto_0

    .line 2071
    :cond_1
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez p0, :cond_2

    .line 2072
    new-instance p0, Lcom/appsflyer/internal/ai;

    invoke-direct {p0}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 2074
    :cond_2
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 31
    invoke-virtual {p0}, Lcom/appsflyer/internal/ai;->ı()V

    .line 3071
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez p0, :cond_3

    .line 3072
    new-instance p0, Lcom/appsflyer/internal/ai;

    invoke-direct {p0}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 3074
    :cond_3
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 32
    invoke-virtual {p0}, Lcom/appsflyer/internal/ai;->ι()V

    :goto_0
    const-string p0, "ol_id"

    .line 36
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "ol_scheme"

    .line 38
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ol_domain"

    .line 39
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ol_ver"

    .line 40
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_4

    .line 43
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v4, "onelinkScheme"

    invoke-virtual {v3, v4, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 46
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    const-string v3, "onelinkDomain"

    invoke-virtual {p0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_a

    .line 49
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    const-string v2, "onelinkVersion"

    invoke-virtual {p0, v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 57
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6071
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez p0, :cond_6

    .line 6072
    new-instance p0, Lcom/appsflyer/internal/ai;

    invoke-direct {p0}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 6074
    :cond_6
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 58
    invoke-virtual {p0}, Lcom/appsflyer/internal/ai;->ı()V

    .line 7071
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez p0, :cond_7

    .line 7072
    new-instance p0, Lcom/appsflyer/internal/ai;

    invoke-direct {p0}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 7074
    :cond_7
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 59
    invoke-virtual {p0}, Lcom/appsflyer/internal/ai;->ι()V

    goto :goto_3

    :catch_1
    nop

    .line 4071
    :goto_2
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez p0, :cond_8

    .line 4072
    new-instance p0, Lcom/appsflyer/internal/ai;

    invoke-direct {p0}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 4074
    :cond_8
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 54
    invoke-virtual {p0}, Lcom/appsflyer/internal/ai;->ı()V

    .line 5071
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez p0, :cond_9

    .line 5072
    new-instance p0, Lcom/appsflyer/internal/ai;

    invoke-direct {p0}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 5074
    :cond_9
    sget-object p0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 55
    invoke-virtual {p0}, Lcom/appsflyer/internal/ai;->ι()V

    :goto_3
    move-object v1, v0

    :cond_a
    :goto_4
    return-object v1
.end method
