.class public final Lo/Lifecycling$1$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Lifecycling$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/festives/manage/InvitesAdapter$Companion;",
        "",
        "()V",
        "ITEM_TYPE_INVITE",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/ae;

.field private final extraCallback:I

.field private final onMessageChannelReady:Lo/OaidClient$Info;

.field private final onNavigationEvent:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ae;Lo/OaidClient$Info;ILjava/lang/Runnable;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Lifecycling$1$onMessageChannelReady;->ICustomTabsCallback:Lo/ae;

    iput-object p2, p0, Lo/Lifecycling$1$onMessageChannelReady;->onMessageChannelReady:Lo/OaidClient$Info;

    iput p3, p0, Lo/Lifecycling$1$onMessageChannelReady;->extraCallback:I

    iput-object p4, p0, Lo/Lifecycling$1$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 2000
    iget-object v6, p0, Lo/Lifecycling$1$onMessageChannelReady;->ICustomTabsCallback:Lo/ae;

    iget-object v7, p0, Lo/Lifecycling$1$onMessageChannelReady;->onMessageChannelReady:Lo/OaidClient$Info;

    iget v8, p0, Lo/Lifecycling$1$onMessageChannelReady;->extraCallback:I

    iget-object v9, p0, Lo/Lifecycling$1$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    const/4 v10, 0x1

    .line 2080
    :try_start_0
    iget-object v0, v6, Lo/ae;->onRelationshipValidationResult:Lo/b$e;

    iget-object v1, v6, Lo/ae;->onPostMessage:Lo/ah;

    .line 3000
    new-instance v2, Lo/unregisterOnLoadCanceledListener$onPostMessage;

    invoke-direct {v2, v1}, Lo/unregisterOnLoadCanceledListener$onPostMessage;-><init>(Lo/ah;)V

    .line 2080
    invoke-interface {v0, v2}, Lo/b$e;->ICustomTabsCallback(Lo/b$e$ICustomTabsCallback;)Ljava/lang/Object;

    .line 3070
    iget-object v0, v6, Lo/ae;->onMessageChannelReady:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 3071
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3072
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3073
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2082
    iget-object v0, v6, Lo/ae;->onRelationshipValidationResult:Lo/b$e;

    .line 4000
    new-instance v1, Lo/onStartLoading$ICustomTabsCallback;

    invoke-direct {v1, v6, v7, v8}, Lo/onStartLoading$ICustomTabsCallback;-><init>(Lo/ae;Lo/OaidClient$Info;I)V

    .line 2082
    invoke-interface {v0, v1}, Lo/b$e;->ICustomTabsCallback(Lo/b$e$ICustomTabsCallback;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 4099
    :cond_1
    iget-object v0, v6, Lo/ae;->extraCallback:Lo/getUrl;

    invoke-virtual {v7}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/getUrl;->onMessageChannelReady(Ljava/lang/String;)Lo/ContentFetcher$2;

    move-result-object v0

    .line 4101
    iget-object v1, v6, Lo/ae;->onRelationshipValidationResult:Lo/b$e;

    .line 5000
    new-instance v2, Lo/waitForLoader$onMessageChannelReady;

    invoke-direct {v2, v6, v7}, Lo/waitForLoader$onMessageChannelReady;-><init>(Lo/ae;Lo/OaidClient$Info;)V

    .line 4102
    invoke-interface {v1, v2}, Lo/b$e;->ICustomTabsCallback(Lo/b$e$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 4105
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    const-string v0, "Uploader"

    const-string v1, "Unknown backend for %s, deleting event batch for it..."

    .line 4111
    invoke-static {v0, v1, v7}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5043
    new-instance v0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;

    sget-object v1, Lo/ActivityCompat$onPostMessage;->onPostMessage:Lo/ActivityCompat$onPostMessage;

    const-wide/16 v4, -0x1

    invoke-direct {v0, v1, v4, v5}, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;-><init>(Lo/ActivityCompat$onPostMessage;J)V

    :goto_1
    move-object v2, v0

    goto :goto_3

    .line 4115
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4117
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/markSupported;

    .line 5044
    iget-object v4, v4, Lo/markSupported;->onNavigationEvent:Lo/Foreground$4$4;

    .line 4118
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6036
    :cond_3
    new-instance v2, Lo/doRequest$onMessageChannelReady;

    invoke-direct {v2}, Lo/doRequest$onMessageChannelReady;-><init>()V

    .line 4123
    invoke-virtual {v2, v1}, Lo/ContentFetcher$extraCallback;->extraCallback(Ljava/lang/Iterable;)Lo/ContentFetcher$extraCallback;

    move-result-object v1

    .line 4124
    invoke-virtual {v7}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ContentFetcher$extraCallback;->extraCallback([B)Lo/ContentFetcher$extraCallback;

    move-result-object v1

    .line 4125
    invoke-virtual {v1}, Lo/ContentFetcher$extraCallback;->onPostMessage()Lo/ContentFetcher;

    move-result-object v1

    .line 4121
    invoke-interface {v0, v1}, Lo/ContentFetcher$2;->onNavigationEvent(Lo/ContentFetcher;)Lo/ActivityCompat;

    move-result-object v0

    goto :goto_1

    .line 4128
    :goto_3
    iget-object v11, v6, Lo/ae;->onRelationshipValidationResult:Lo/b$e;

    .line 7000
    new-instance v12, Lo/unregisterListener$onNavigationEvent;

    move-object v0, v12

    move-object v1, v6

    move-object v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lo/unregisterListener$onNavigationEvent;-><init>(Lo/ae;Lo/ActivityCompat;Ljava/lang/Iterable;Lo/OaidClient$Info;I)V

    .line 4128
    invoke-interface {v11, v12}, Lo/b$e;->ICustomTabsCallback(Lo/b$e$ICustomTabsCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2093
    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2091
    :catch_0
    :try_start_1
    iget-object v0, v6, Lo/ae;->onNavigationEvent:Lo/ai;

    add-int/2addr v8, v10

    invoke-interface {v0, v7, v8}, Lo/ai;->onPostMessage(Lo/OaidClient$Info;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2093
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_5
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 2094
    throw v0
.end method
