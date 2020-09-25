.class public final Lo/setContentInsetStartWithNavigation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setContentInsetStartWithNavigation$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/network/LoggingInterceptor;",
        "Lokhttp3/Interceptor;",
        "()V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;
    .locals 14

    const-string v0, "chain"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lo/annotatedName$onNavigationEvent;->onNavigationEvent()Lo/isCompleteForChild;

    move-result-object v0

    .line 1057
    iget-object v1, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 13
    new-instance v2, Lo/evictionCount;

    invoke-direct {v2}, Lo/evictionCount;-><init>()V

    .line 14
    invoke-virtual {v2}, Lo/evictionCount;->onPostMessage()V

    .line 15
    invoke-interface {p1, v0}, Lo/annotatedName$onNavigationEvent;->onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object p1

    .line 16
    invoke-virtual {v2}, Lo/evictionCount;->onMessageChannelReady()J

    const-string/jumbo v3, "response"

    .line 18
    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    iget v3, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xc8

    if-lt v3, v6, :cond_0

    iget v3, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v6, 0x12c

    if-ge v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x0

    const-string/jumbo v7, "tag"

    const-string/jumbo v8, "trying to get duration before calling stop()"

    const-string v9, "TimeTracker"

    if-eqz v3, :cond_2

    .line 2030
    iget-object v3, v2, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v10, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v3, v10}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 2069
    invoke-static {v9, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2070
    sget-object v3, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v9, v8, v6}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2033
    :cond_1
    iget-wide v10, v2, Lo/evictionCount;->ICustomTabsCallback:J

    const-wide/16 v12, 0x3e8

    cmp-long v3, v10, v12

    if-lez v3, :cond_6

    :cond_2
    new-array v3, v5, [Lo/addWrite;

    .line 3049
    iget-object v0, v0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 21
    invoke-virtual {v0}, Lo/isFullyInitialized;->onMessageChannelReady()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4043
    new-instance v10, Lo/addWrite;

    const-string/jumbo v11, "url"

    invoke-direct {v10, v11, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v3, v4

    const-string v0, "pairs"

    .line 21
    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v10

    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 5077
    iget-object v3, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_3

    .line 25
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ">> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5082
    iget-object v12, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v13, v10, 0x1

    aget-object v12, v12, v13

    .line 25
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 5087
    iget-object v12, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/2addr v13, v5

    aget-object v12, v12, v13

    .line 25
    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5098
    :cond_3
    iget v1, p1, Lo/childAddedChange;->onNavigationEvent:I

    .line 29
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "response_code"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5136
    iget-object v1, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 6077
    iget-object v3, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    :goto_2
    if-ge v4, v3, :cond_4

    .line 34
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<< "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6082
    iget-object v11, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v12, v4, 0x1

    aget-object v11, v11, v12

    .line 34
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6087
    iget-object v11, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/2addr v12, v5

    aget-object v11, v11, v12

    .line 34
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7030
    :cond_4
    iget-object v1, v2, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v3, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_5

    .line 7069
    invoke-static {v9, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7070
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v9, v8, v6}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7033
    :cond_5
    iget-wide v1, v2, Lo/evictionCount;->ICustomTabsCallback:J

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "request_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "network_request"

    .line 40
    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_6
    return-object p1
.end method
