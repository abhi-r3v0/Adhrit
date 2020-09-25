.class public Lo/populateTime;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/convertLongToFourByteBuffer;


# static fields
.field private static volatile zzb:Lo/convertLongToFourByteBuffer;


# instance fields
.field final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/getLegacySharedPrefs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lo/zzcw;


# direct methods
.method private constructor <init>(Lo/zzcw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lo/populateTime;->zzc:Lo/zzcw;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lo/populateTime;->zza:Ljava/util/Map;

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lo/convertLongToFourByteBuffer;
    .locals 1

    .line 25
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lo/populateTime;->getInstance(Lcom/google/firebase/FirebaseApp;)Lo/convertLongToFourByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lo/convertLongToFourByteBuffer;
    .locals 1

    .line 26
    const-class v0, Lo/convertLongToFourByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/convertLongToFourByteBuffer;

    return-object p0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;)Lo/convertLongToFourByteBuffer;
    .locals 5

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Lo/populateTime;->zzb:Lo/convertLongToFourByteBuffer;

    if-nez v0, :cond_2

    .line 11
    const-class v0, Lo/populateTime;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lo/populateTime;->zzb:Lo/convertLongToFourByteBuffer;

    if-nez v1, :cond_1

    .line 13
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    const-class v2, Lo/isPowerConnected;

    sget-object v3, Lo/component18;->zza:Ljava/util/concurrent/Executor;

    sget-object v4, Lo/getAppProcessInfo;->zza:Lo/AutoCrashlyticsReportEncoder;

    invoke-interface {p2, v2, v3, v4}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;->subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lo/AutoCrashlyticsReportEncoder;)V

    const-string p2, "dataCollectionDefaultEnabled"

    .line 17
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result p0

    .line 18
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    :cond_0
    new-instance p0, Lo/populateTime;

    const/4 p2, 0x0

    .line 21
    invoke-static {p1, p2, p2, p2, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lo/getCsatResponse;

    move-result-object p1

    invoke-virtual {p1}, Lo/getCsatResponse;->onNavigationEvent()Lo/zzcw;

    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lo/populateTime;-><init>(Lo/zzcw;)V

    sput-object p0, Lo/populateTime;->zzb:Lo/convertLongToFourByteBuffer;

    .line 23
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 24
    :cond_2
    :goto_0
    sget-object p0, Lo/populateTime;->zzb:Lo/convertLongToFourByteBuffer;

    return-object p0

    .line 5002
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4002
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3002
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2002
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final synthetic zza(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;->getPayload()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/isPowerConnected;

    iget-boolean p0, p0, Lo/isPowerConnected;->enabled:Z

    .line 82
    const-class v0, Lo/populateTime;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lo/populateTime;->zzb:Lo/convertLongToFourByteBuffer;

    check-cast v1, Lo/populateTime;

    iget-object v1, v1, Lo/populateTime;->zzc:Lo/zzcw;

    .line 6048
    iget-object v1, v1, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    invoke-virtual {v1, p0}, Lo/getCsatResponse;->onPostMessage(Z)V

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final zza(Ljava/lang/String;)Z
    .locals 1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/populateTime;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/populateTime;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic zza(Lo/populateTime;Ljava/lang/String;)Z
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lo/populateTime;->zza(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 69
    invoke-static {p2, p3}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lo/populateTime;->zzc:Lo/zzcw;

    .line 6023
    iget-object v0, v0, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2, p3}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/convertLongToFourByteBuffer$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v1, p0, Lo/populateTime;->zzc:Lo/zzcw;

    .line 6025
    iget-object v1, v1, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    invoke-virtual {v1, p1, p2}, Lo/getCsatResponse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 75
    invoke-static {p2}, Lo/getSharedPrefs;->zza(Landroid/os/Bundle;)Lo/convertLongToFourByteBuffer$ICustomTabsCallback;

    move-result-object p2

    .line 76
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 1

    .line 79
    iget-object v0, p0, Lo/populateTime;->zzc:Lo/zzcw;

    .line 6044
    iget-object v0, v0, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onNavigationEvent(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUserProperties(Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/populateTime;->zzc:Lo/zzcw;

    .line 5020
    iget-object v0, v0, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p3, :cond_0

    .line 28
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 29
    :cond_0
    invoke-static {p1}, Lo/getSharedPrefs;->zza(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 31
    :cond_1
    invoke-static {p2, p3}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 33
    :cond_2
    invoke-static {p1, p2, p3}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 35
    :cond_3
    invoke-static {p1, p2, p3}, Lo/getSharedPrefs;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lo/populateTime;->zzc:Lo/zzcw;

    .line 5014
    iget-object v0, v0, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2, p3}, Lo/getCsatResponse;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerAnalyticsConnectorListener(Ljava/lang/String;Lo/convertLongToFourByteBuffer$onNavigationEvent;)Lo/convertLongToFourByteBuffer$onPostMessage;
    .locals 3

    if-eqz p2, :cond_6

    .line 46
    invoke-static {p1}, Lo/getSharedPrefs;->zza(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lo/populateTime;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 50
    :cond_1
    iget-object v0, p0, Lo/populateTime;->zzc:Lo/zzcw;

    const-string v2, "fiam"

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    new-instance v2, Lo/CommonUtils;

    invoke-direct {v2, v0, p2}, Lo/CommonUtils;-><init>(Lo/zzcw;Lo/convertLongToFourByteBuffer$onNavigationEvent;)V

    goto :goto_1

    :cond_2
    const-string v2, "crash"

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "clx"

    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_1

    .line 55
    :cond_4
    :goto_0
    new-instance v2, Lo/convertLongToTwoByteBuffer;

    invoke-direct {v2, v0, p2}, Lo/convertLongToTwoByteBuffer;-><init>(Lo/zzcw;Lo/convertLongToFourByteBuffer$onNavigationEvent;)V

    :goto_1
    if-eqz v2, :cond_5

    .line 59
    iget-object p2, p0, Lo/populateTime;->zza:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance p2, Lo/populateTime$3;

    invoke-direct {p2, p0, p1}, Lo/populateTime$3;-><init>(Lo/populateTime;Ljava/lang/String;)V

    return-object p2

    :cond_5
    return-object v1

    .line 6002
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConditionalUserProperty(Lo/convertLongToFourByteBuffer$ICustomTabsCallback;)V
    .locals 1

    .line 62
    invoke-static {p1}, Lo/getSharedPrefs;->zza(Lo/convertLongToFourByteBuffer$ICustomTabsCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lo/populateTime;->zzc:Lo/zzcw;

    .line 65
    invoke-static {p1}, Lo/getSharedPrefs;->zzb(Lo/convertLongToFourByteBuffer$ICustomTabsCallback;)Landroid/os/Bundle;

    move-result-object p1

    .line 6021
    iget-object v0, v0, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onPostMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 38
    invoke-static {p1}, Lo/getSharedPrefs;->zza(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-static {p1, p2}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lo/populateTime;->zzc:Lo/zzcw;

    .line 5018
    iget-object v0, v0, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2, p3}, Lo/getCsatResponse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
