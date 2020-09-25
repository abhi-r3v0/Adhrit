.class public final Lo/CreateOneLinkHttpTask$ResponseListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ContentFetcher$2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;,
        Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/net/ConnectivityManager;

.field private extraCallback:Ljava/net/URL;

.field private final onMessageChannelReady:Lo/b;

.field private final onNavigationEvent:Lo/QueueFileLogStore;

.field private final onPostMessage:Lo/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/b;Lo/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/QueueFileLogStore$LogBytes;

    invoke-direct {v0}, Lo/QueueFileLogStore$LogBytes;-><init>()V

    sget-object v1, Lo/onTrackingRequestFailure;->extraCallback:Lo/doWriteToLog;

    .line 3
    invoke-virtual {v0, v1}, Lo/QueueFileLogStore$LogBytes;->configureWith(Lo/doWriteToLog;)Lo/QueueFileLogStore$LogBytes;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lo/QueueFileLogStore$LogBytes;->ignoreNullValues(Z)Lo/QueueFileLogStore$LogBytes;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo/QueueFileLogStore$LogBytes;->build()Lo/QueueFileLogStore;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lo/CreateOneLinkHttpTask$ResponseListener;->onNavigationEvent:Lo/QueueFileLogStore;

    const-string v0, "connectivity"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lo/CreateOneLinkHttpTask$ResponseListener;->ICustomTabsCallback:Landroid/net/ConnectivityManager;

    .line 8
    sget-object p1, Lo/onTrackingRequestSuccess;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {p1}, Lo/CreateOneLinkHttpTask$ResponseListener;->onPostMessage(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lo/CreateOneLinkHttpTask$ResponseListener;->extraCallback:Ljava/net/URL;

    .line 9
    iput-object p3, p0, Lo/CreateOneLinkHttpTask$ResponseListener;->onMessageChannelReady:Lo/b;

    .line 10
    iput-object p2, p0, Lo/CreateOneLinkHttpTask$ResponseListener;->onPostMessage:Lo/b;

    return-void
.end method

.method private static onPostMessage(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Invalid url: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final extraCallback(Lo/Foreground$4$4;)Lo/Foreground$4$4;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/CreateOneLinkHttpTask$ResponseListener;->ICustomTabsCallback:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lo/Foreground$4$4;->onRelationshipValidationResult()Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "sdk-version"

    .line 3
    invoke-virtual {p1, v2, v1}, Lo/Foreground$4$4$extraCallback;->onNavigationEvent(Ljava/lang/String;I)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    .line 4
    invoke-virtual {p1, v2, v1}, Lo/Foreground$4$4$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "hardware"

    .line 5
    invoke-virtual {p1, v2, v1}, Lo/Foreground$4$4$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "device"

    .line 6
    invoke-virtual {p1, v2, v1}, Lo/Foreground$4$4$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "product"

    .line 7
    invoke-virtual {p1, v2, v1}, Lo/Foreground$4$4$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "os-uild"

    .line 8
    invoke-virtual {p1, v2, v1}, Lo/Foreground$4$4$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "manufacturer"

    .line 9
    invoke-virtual {p1, v2, v1}, Lo/Foreground$4$4$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "fingerprint"

    .line 10
    invoke-virtual {p1, v2, v1}, Lo/Foreground$4$4$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 12
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-string v3, "tz-offset"

    .line 14
    invoke-virtual {p1, v3, v1, v2}, Lo/Foreground$4$4$extraCallback;->onPostMessage(Ljava/lang/String;J)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    if-nez v0, :cond_0

    .line 15
    sget-object v1, Lo/onResponse$onMessageChannelReady;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    .line 8001
    iget v1, v1, Lo/onResponse$onMessageChannelReady;->onNavigationEvent:I

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    const-string v2, "net-type"

    .line 17
    invoke-virtual {p1, v2, v1}, Lo/Foreground$4$4$extraCallback;->onNavigationEvent(Ljava/lang/String;I)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    .line 9001
    iget v0, v0, Lo/onResponse$ICustomTabsCallback;->ICustomTabsCallback:I

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 20
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onNavigationEvent:Lo/onResponse$ICustomTabsCallback;

    .line 10001
    iget v0, v0, Lo/onResponse$ICustomTabsCallback;->ICustomTabsCallback:I

    goto :goto_1

    .line 10002
    :cond_2
    sget-object v1, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onResponse$ICustomTabsCallback;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_1
    const-string v1, "mobile-subtype"

    .line 22
    invoke-virtual {p1, v1, v0}, Lo/Foreground$4$4$extraCallback;->onNavigationEvent(Ljava/lang/String;I)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lo/Foreground$4$4$extraCallback;->onPostMessage()Lo/Foreground$4$4;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Lo/ContentFetcher;)Lo/ActivityCompat;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lo/ContentFetcher;->onPostMessage()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Foreground$4$4;

    .line 3
    invoke-virtual {v3}, Lo/Foreground$4$4;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "TransportRuntime."

    const-string v6, "CctTransportBackend"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/Foreground$4$4;

    .line 11001
    new-instance v10, Lo/getOneLinkUrl$onPostMessage;

    invoke-direct {v10}, Lo/getOneLinkUrl$onPostMessage;-><init>()V

    .line 12
    sget-object v11, Lo/FirebaseMessagingServiceListener;->onNavigationEvent:Lo/FirebaseMessagingServiceListener;

    .line 13
    invoke-virtual {v10, v11}, Lo/onErrorResponse$extraCallback;->extraCallback(Lo/FirebaseMessagingServiceListener;)Lo/onErrorResponse$extraCallback;

    move-result-object v10

    iget-object v11, v1, Lo/CreateOneLinkHttpTask$ResponseListener;->onPostMessage:Lo/b;

    .line 14
    invoke-interface {v11}, Lo/b;->onPostMessage()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lo/onErrorResponse$extraCallback;->onPostMessage(J)Lo/onErrorResponse$extraCallback;

    move-result-object v10

    iget-object v11, v1, Lo/CreateOneLinkHttpTask$ResponseListener;->onMessageChannelReady:Lo/b;

    .line 15
    invoke-interface {v11}, Lo/b;->onPostMessage()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lo/onErrorResponse$extraCallback;->onNavigationEvent(J)Lo/onErrorResponse$extraCallback;

    move-result-object v10

    .line 12001
    new-instance v11, Lo/onConversionFailure$onNavigationEvent;

    invoke-direct {v11}, Lo/onConversionFailure$onNavigationEvent;-><init>()V

    .line 16
    sget-object v12, Lo/setBrandDomain$onPostMessage;->onMessageChannelReady:Lo/setBrandDomain$onPostMessage;

    .line 17
    invoke-virtual {v11, v12}, Lo/setBrandDomain$onNavigationEvent;->onPostMessage(Lo/setBrandDomain$onPostMessage;)Lo/setBrandDomain$onNavigationEvent;

    move-result-object v11

    .line 13001
    new-instance v12, Lo/onConversionDataLoaded$onPostMessage;

    invoke-direct {v12}, Lo/onConversionDataLoaded$onPostMessage;-><init>()V

    const-string v13, "sdk-version"

    .line 19
    invoke-virtual {v9, v13}, Lo/Foreground$4$4;->onNavigationEvent(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lo/saveProperties$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Integer;)Lo/saveProperties$onMessageChannelReady;

    move-result-object v12

    const-string v13, "model"

    .line 20
    invoke-virtual {v9, v13}, Lo/Foreground$4$4;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lo/saveProperties$onMessageChannelReady;->extraCallback(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;

    move-result-object v12

    const-string v13, "hardware"

    .line 21
    invoke-virtual {v9, v13}, Lo/Foreground$4$4;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lo/saveProperties$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;

    move-result-object v12

    const-string v13, "device"

    .line 22
    invoke-virtual {v9, v13}, Lo/Foreground$4$4;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lo/saveProperties$onMessageChannelReady;->onPostMessage(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;

    move-result-object v12

    const-string v13, "product"

    .line 23
    invoke-virtual {v9, v13}, Lo/Foreground$4$4;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lo/saveProperties$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;

    move-result-object v12

    const-string v13, "os-uild"

    .line 24
    invoke-virtual {v9, v13}, Lo/Foreground$4$4;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lo/saveProperties$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;

    move-result-object v12

    const-string v13, "manufacturer"

    .line 25
    invoke-virtual {v9, v13}, Lo/Foreground$4$4;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lo/saveProperties$onMessageChannelReady;->onTransact(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;

    move-result-object v12

    const-string v13, "fingerprint"

    .line 26
    invoke-virtual {v9, v13}, Lo/Foreground$4$4;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Lo/saveProperties$onMessageChannelReady;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;

    move-result-object v9

    .line 27
    invoke-virtual {v9}, Lo/saveProperties$onMessageChannelReady;->onPostMessage()Lo/saveProperties;

    move-result-object v9

    .line 28
    invoke-virtual {v11, v9}, Lo/setBrandDomain$onNavigationEvent;->onNavigationEvent(Lo/saveProperties;)Lo/setBrandDomain$onNavigationEvent;

    move-result-object v9

    .line 29
    invoke-virtual {v9}, Lo/setBrandDomain$onNavigationEvent;->onNavigationEvent()Lo/setBrandDomain;

    move-result-object v9

    .line 30
    invoke-virtual {v10, v9}, Lo/onErrorResponse$extraCallback;->ICustomTabsCallback(Lo/setBrandDomain;)Lo/onErrorResponse$extraCallback;

    move-result-object v9

    .line 31
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 14001
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lo/onErrorResponse$extraCallback;->extraCallback(Ljava/lang/Integer;)Lo/onErrorResponse$extraCallback;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 32
    :catch_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 15001
    invoke-virtual {v9, v10}, Lo/onErrorResponse$extraCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/onErrorResponse$extraCallback;

    .line 33
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/Foreground$4$4;

    .line 35
    invoke-virtual {v11}, Lo/Foreground$4$4;->ICustomTabsCallback()Lo/Foreground$Listener;

    move-result-object v12

    .line 15045
    iget-object v13, v12, Lo/Foreground$Listener;->extraCallback:Lo/isEnableLog;

    .line 16030
    new-instance v14, Lo/isEnableLog;

    const-string v15, "proto"

    invoke-direct {v14, v15}, Lo/isEnableLog;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 16049
    iget-object v12, v12, Lo/Foreground$Listener;->ICustomTabsCallback:[B

    .line 17003
    new-instance v13, Lo/BuildConfig$onMessageChannelReady;

    invoke-direct {v13}, Lo/BuildConfig$onMessageChannelReady;-><init>()V

    .line 17004
    invoke-virtual {v13, v12}, Lo/handleResponse$onMessageChannelReady;->onPostMessage([B)Lo/handleResponse$onMessageChannelReady;

    move-result-object v12

    goto :goto_4

    .line 17030
    :cond_2
    new-instance v14, Lo/isEnableLog;

    const-string v15, "json"

    invoke-direct {v14, v15}, Lo/isEnableLog;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 40
    new-instance v13, Ljava/lang/String;

    .line 17049
    iget-object v12, v12, Lo/Foreground$Listener;->ICustomTabsCallback:[B

    .line 41
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 18001
    new-instance v12, Lo/BuildConfig$onMessageChannelReady;

    invoke-direct {v12}, Lo/BuildConfig$onMessageChannelReady;-><init>()V

    .line 18002
    invoke-virtual {v12, v13}, Lo/handleResponse$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;)Lo/handleResponse$onMessageChannelReady;

    move-result-object v12

    .line 42
    :goto_4
    invoke-virtual {v11}, Lo/Foreground$4$4;->extraCallback()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lo/handleResponse$onMessageChannelReady;->onNavigationEvent(J)Lo/handleResponse$onMessageChannelReady;

    move-result-object v13

    .line 43
    invoke-virtual {v11}, Lo/Foreground$4$4;->onNavigationEvent()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lo/handleResponse$onMessageChannelReady;->ICustomTabsCallback(J)Lo/handleResponse$onMessageChannelReady;

    move-result-object v13

    const-string v14, "tz-offset"

    .line 44
    invoke-virtual {v11, v14}, Lo/Foreground$4$4;->onPostMessage(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lo/handleResponse$onMessageChannelReady;->onMessageChannelReady(J)Lo/handleResponse$onMessageChannelReady;

    move-result-object v13

    .line 19001
    new-instance v14, Lo/initRequest$onNavigationEvent;

    invoke-direct {v14}, Lo/initRequest$onNavigationEvent;-><init>()V

    const-string v15, "net-type"

    .line 46
    invoke-virtual {v11, v15}, Lo/Foreground$4$4;->onNavigationEvent(Ljava/lang/String;)I

    move-result v15

    .line 19002
    sget-object v8, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {v8, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/onResponse$onMessageChannelReady;

    .line 48
    invoke-virtual {v14, v8}, Lo/onResponse$onNavigationEvent;->ICustomTabsCallback(Lo/onResponse$onMessageChannelReady;)Lo/onResponse$onNavigationEvent;

    move-result-object v8

    const-string v14, "mobile-subtype"

    .line 49
    invoke-virtual {v11, v14}, Lo/Foreground$4$4;->onNavigationEvent(Ljava/lang/String;)I

    move-result v14

    .line 20002
    sget-object v15, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/onResponse$ICustomTabsCallback;

    .line 51
    invoke-virtual {v8, v14}, Lo/onResponse$onNavigationEvent;->onNavigationEvent(Lo/onResponse$ICustomTabsCallback;)Lo/onResponse$onNavigationEvent;

    move-result-object v8

    .line 52
    invoke-virtual {v8}, Lo/onResponse$onNavigationEvent;->extraCallback()Lo/onResponse;

    move-result-object v8

    .line 53
    invoke-virtual {v13, v8}, Lo/handleResponse$onMessageChannelReady;->ICustomTabsCallback(Lo/onResponse;)Lo/handleResponse$onMessageChannelReady;

    .line 54
    invoke-virtual {v11}, Lo/Foreground$4$4;->onPostMessage()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 55
    invoke-virtual {v11}, Lo/Foreground$4$4;->onPostMessage()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lo/handleResponse$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Integer;)Lo/handleResponse$onMessageChannelReady;

    .line 56
    :cond_3
    invoke-virtual {v12}, Lo/handleResponse$onMessageChannelReady;->onPostMessage()Lo/handleResponse;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 21023
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v11, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v13, v11, v12

    const-string v12, "Received event of unsupported encoding %s. Skipping..."

    .line 20051
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 58
    :cond_5
    invoke-virtual {v9, v10}, Lo/onErrorResponse$extraCallback;->extraCallback(Ljava/util/List;)Lo/onErrorResponse$extraCallback;

    .line 59
    invoke-virtual {v9}, Lo/onErrorResponse$extraCallback;->onNavigationEvent()Lo/onErrorResponse;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 22001
    :cond_6
    new-instance v0, Lo/ConversionDataListener;

    invoke-direct {v0, v2}, Lo/ConversionDataListener;-><init>(Ljava/util/List;)V

    .line 61
    iget-object v2, v1, Lo/CreateOneLinkHttpTask$ResponseListener;->extraCallback:Ljava/net/URL;

    .line 62
    invoke-virtual/range {p1 .. p1}, Lo/ContentFetcher;->onMessageChannelReady()[B

    move-result-object v3

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    if-eqz v3, :cond_c

    .line 63
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lo/ContentFetcher;->onMessageChannelReady()[B

    move-result-object v3

    .line 23001
    new-instance v11, Ljava/lang/String;

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v11, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v3, "1$"

    .line 23002
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x2

    .line 23003
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, "\\"

    .line 23004
    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 23005
    array-length v11, v7

    if-ne v11, v3, :cond_a

    const/4 v3, 0x0

    .line 23006
    aget-object v3, v7, v3

    .line 23007
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 23008
    aget-object v4, v7, v4

    .line 23009
    new-instance v7, Lo/onTrackingRequestSuccess;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v4, v8

    :cond_7
    invoke-direct {v7, v3, v4}, Lo/onTrackingRequestSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24001
    iget-object v3, v7, Lo/onTrackingRequestSuccess;->onNavigationEvent:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 25001
    iget-object v8, v7, Lo/onTrackingRequestSuccess;->onNavigationEvent:Ljava/lang/String;

    .line 26001
    :cond_8
    iget-object v3, v7, Lo/onTrackingRequestSuccess;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 27001
    iget-object v2, v7, Lo/onTrackingRequestSuccess;->onMessageChannelReady:Ljava/lang/String;

    .line 67
    invoke-static {v2}, Lo/CreateOneLinkHttpTask$ResponseListener;->onPostMessage(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    goto :goto_6

    .line 23010
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing endpoint in CCTDestination extras"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23011
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Extra is not a valid encoded LegacyFlgDestination"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23012
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Version marker missing from extras"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27043
    :catch_1
    new-instance v0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;

    sget-object v2, Lo/ActivityCompat$onPostMessage;->onPostMessage:Lo/ActivityCompat$onPostMessage;

    invoke-direct {v0, v2, v9, v10}, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;-><init>(Lo/ActivityCompat$onPostMessage;J)V

    return-object v0

    :cond_c
    :goto_6
    const/4 v3, 0x5

    .line 69
    :try_start_2
    new-instance v4, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;

    invoke-direct {v4, v2, v0, v8}, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;-><init>(Ljava/net/URL;Lo/CreateOneLinkHttpTask;Ljava/lang/String;)V

    .line 28000
    new-instance v0, Lo/onContextItemSelected$onPostMessage;

    invoke-direct {v0, v1}, Lo/onContextItemSelected$onPostMessage;-><init>(Lo/CreateOneLinkHttpTask$ResponseListener;)V

    .line 29000
    sget-object v2, Lo/requestSimpleAnimationsInNextLayout;->onPostMessage:Lo/requestSimpleAnimationsInNextLayout;

    .line 70
    invoke-static {v3, v4, v0, v2}, Lo/extraCallback;->extraCallback(ILjava/lang/Object;Lo/call;Lo/a$4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;

    .line 71
    iget v2, v0, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;->onNavigationEvent:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_d

    .line 72
    iget-wide v2, v0, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;->ICustomTabsCallback:J

    .line 29047
    new-instance v0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;

    sget-object v4, Lo/ActivityCompat$onPostMessage;->ICustomTabsCallback:Lo/ActivityCompat$onPostMessage;

    invoke-direct {v0, v4, v2, v3}, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;-><init>(Lo/ActivityCompat$onPostMessage;J)V

    return-object v0

    .line 73
    :cond_d
    iget v0, v0, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;->onNavigationEvent:I

    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_e

    const/16 v2, 0x194

    if-eq v0, v2, :cond_e

    .line 30043
    new-instance v0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;

    sget-object v2, Lo/ActivityCompat$onPostMessage;->onPostMessage:Lo/ActivityCompat$onPostMessage;

    invoke-direct {v0, v2, v9, v10}, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;-><init>(Lo/ActivityCompat$onPostMessage;J)V

    return-object v0

    .line 31039
    :cond_e
    new-instance v0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;

    sget-object v2, Lo/ActivityCompat$onPostMessage;->onNavigationEvent:Lo/ActivityCompat$onPostMessage;

    invoke-direct {v0, v2, v9, v10}, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;-><init>(Lo/ActivityCompat$onPostMessage;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 32023
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not make request to the backend"

    .line 31047
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32039
    new-instance v0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;

    sget-object v2, Lo/ActivityCompat$onPostMessage;->onNavigationEvent:Lo/ActivityCompat$onPostMessage;

    invoke-direct {v0, v2, v9, v10}, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;-><init>(Lo/ActivityCompat$onPostMessage;J)V

    return-object v0
.end method

.method public final onNavigationEvent(Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;)Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "TransportRuntime."

    .line 3
    iget-object v1, p1, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;->onMessageChannelReady:Ljava/net/URL;

    const-string v2, "CctTransportBackend"

    const-string v3, "Making request to: %s"

    invoke-static {v2, v3, v1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p1, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;->onMessageChannelReady:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLConnection;

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v3, 0x7530

    .line 5
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v3, 0x9c40

    .line 6
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v5, "POST"

    .line 9
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "2.3.1"

    aput-object v5, v3, v4

    const-string v4, "datatransport/%s android/"

    .line 11
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "User-Agent"

    .line 12
    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gzip"

    const-string v4, "Content-Encoding"

    .line 13
    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/json"

    .line 14
    invoke-virtual {v1, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept-Encoding"

    .line 15
    invoke-virtual {v1, v6, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v6, p1, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string v7, "X-Goog-Api-Key"

    .line 17
    invoke-virtual {v1, v7, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 18
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    new-instance v10, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v10, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 20
    :try_start_2
    iget-object v11, p0, Lo/CreateOneLinkHttpTask$ResponseListener;->onNavigationEvent:Lo/QueueFileLogStore;

    iget-object p1, p1, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;->onPostMessage:Lo/CreateOneLinkHttpTask;

    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-direct {v13, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v11, p1, v12}, Lo/QueueFileLogStore;->encode(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 21
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v9, :cond_1

    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 22
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Status Code: "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2023
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1043
    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Content-Type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3023
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2043
    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Content-Encoding: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4023
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3043
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12e

    if-eq p1, v0, :cond_8

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x133

    if-eq p1, v0, :cond_8

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    .line 26
    new-instance v0, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;

    invoke-direct {v0, p1, v8, v6, v7}, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;-><init>(ILjava/net/URL;J)V

    return-object v0

    .line 27
    :cond_2
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 28
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 31
    :goto_0
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    invoke-static {v2}, Lo/onResponseError;->onMessageChannelReady(Ljava/io/Reader;)Lo/onResponseError;

    move-result-object v2

    .line 5001
    iget-wide v2, v2, Lo/onResponseError;->onNavigationEvent:J

    .line 34
    new-instance v4, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;

    invoke-direct {v4, p1, v8, v2, v3}, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_4

    .line 35
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    return-object v4

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_6

    .line 36
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    :cond_6
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_7

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    :cond_7
    throw p1

    :cond_8
    const-string v0, "Location"

    .line 37
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v2, v6, v7}, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;-><init>(ILjava/net/URL;J)V

    return-object v1

    :catchall_4
    move-exception p1

    .line 39
    :try_start_b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p1

    if-eqz v9, :cond_9

    :try_start_d
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    :cond_9
    :try_start_e
    throw p1
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6023
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Couldn\'t encode request, returning with 400"

    .line 5047
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    new-instance p1, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;

    const/16 v0, 0x190

    invoke-direct {p1, v0, v8, v6, v7}, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;-><init>(ILjava/net/URL;J)V

    return-object p1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 7023
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Couldn\'t open connection, returning with 500"

    .line 6047
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    new-instance p1, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;

    const/16 v0, 0x1f4

    invoke-direct {p1, v0, v8, v6, v7}, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;-><init>(ILjava/net/URL;J)V

    return-object p1
.end method
