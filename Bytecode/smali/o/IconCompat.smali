.class public final Lo/IconCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-interface {p1}, Lo/annotatedName$onNavigationEvent;->onNavigationEvent()Lo/isCompleteForChild;

    move-result-object v0

    .line 1061
    iget-object v1, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 1063
    iget-object v1, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v2, "NoAuth"

    invoke-static {v1, v2}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 1097
    sget-object v4, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    if-eqz v4, :cond_1

    .line 26
    invoke-interface {v4}, Lo/checkCompatWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string/jumbo v4, "url == null"

    if-eqz v1, :cond_3

    .line 2093
    new-instance v5, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v5, v0}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>(Lo/isCompleteForChild;)V

    .line 2202
    iget-object v0, v5, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v0, v2}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 2292
    iget-object v0, v5, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v0, :cond_2

    .line 2293
    new-instance v0, Lo/isCompleteForChild;

    invoke-direct {v0, v5}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    goto :goto_1

    .line 2292
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz v3, :cond_5

    .line 3093
    new-instance v2, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>(Lo/isCompleteForChild;)V

    const-string v0, "Authorization"

    .line 34
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Bearer "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3196
    iget-object v6, v2, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 3311
    invoke-static {v0}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 3312
    invoke-static {v5, v0}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    iget-object v7, v6, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3363
    iget-object v0, v6, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4292
    iget-object v0, v2, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v0, :cond_4

    .line 4293
    new-instance v0, Lo/isCompleteForChild;

    invoke-direct {v0, v2}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    goto :goto_1

    .line 4292
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_5
    :goto_1
    invoke-interface {p1, v0}, Lo/annotatedName$onNavigationEvent;->onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object p1

    .line 5098
    iget v0, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v2, 0x18f

    if-le v0, v2, :cond_8

    if-nez v1, :cond_8

    .line 6098
    iget v0, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_7

    const/16 v1, 0x193

    if-eq v0, v1, :cond_6

    goto :goto_2

    .line 6101
    :cond_6
    sget-object v0, Lo/OperationCanceledException;->onPostMessage:Lo/instantiateProvider;

    .line 49
    sget-object v1, Lo/OperationCanceledException;->extraCallback:Landroid/app/Application;

    invoke-interface {v0, v1, p1}, Lo/instantiateProvider;->onMessageChannelReady(Landroid/content/Context;Lo/childAddedChange;)V

    goto :goto_2

    .line 46
    :cond_7
    sget-object v0, Lo/directExecutor;->onPostMessage:Lo/directExecutor;

    invoke-virtual {v0, v3}, Lo/directExecutor;->onPostMessage(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-object p1
.end method
