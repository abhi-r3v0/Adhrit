.class public final Lcom/appsflyer/internal/s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/s$d;,
        Lcom/appsflyer/internal/s$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ǃ(Landroid/content/Context;)Lcom/appsflyer/internal/s$a;
    .locals 12

    const-string/jumbo v0, "unknown"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "connectivity"

    .line 1069
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "MOBILE"

    const-string v4, "WIFI"

    if-eqz v2, :cond_6

    const/16 v5, 0x15

    .line 1073
    :try_start_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gt v5, v6, :cond_2

    .line 2034
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 2035
    array-length v6, v5

    :goto_0
    if-ge v7, v6, :cond_6

    aget-object v9, v5, v7

    .line 2036
    invoke-virtual {v2, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 2037
    invoke-static {v9}, Lcom/appsflyer/internal/s;->ɩ(Landroid/net/NetworkInfo;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2038
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v8, v2, :cond_0

    goto :goto_1

    .line 2041
    :cond_0
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2051
    :cond_2
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/s;->ɩ(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    move-object v0, v4

    goto :goto_3

    .line 2054
    :cond_3
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/s;->ɩ(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    move-object v0, v3

    goto :goto_3

    .line 2057
    :cond_4
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2058
    invoke-static {v2}, Lcom/appsflyer/internal/s;->ɩ(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2059
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v8, v5, :cond_5

    goto :goto_1

    .line 2061
    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    const-string v2, "phone"

    .line 93
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v3, 0x2

    .line 97
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-ne v3, p0, :cond_8

    const-string v1, "CDMA"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_4
    const-string v3, "Exception while collecting network info. "

    .line 103
    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 105
    :cond_8
    :goto_5
    new-instance p0, Lcom/appsflyer/internal/s$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/s$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static ɩ(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
