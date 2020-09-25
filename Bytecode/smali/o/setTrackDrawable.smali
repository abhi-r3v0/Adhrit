.class final Lo/setTrackDrawable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Lo/annotatedName$onNavigationEvent;->onNavigationEvent()Lo/isCompleteForChild;

    move-result-object v0

    .line 1093
    new-instance v1, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>(Lo/isCompleteForChild;)V

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    iget-object v2, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    const-string v3, "X-REQUEST-ID"

    .line 1311
    invoke-static {v3}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 1312
    invoke-static {v0, v3}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v4, v2, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1363
    iget-object v2, v2, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    .line 32
    invoke-static {}, Lo/getTrackTintList;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    .line 2196
    iget-object v2, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    const-string v3, "X-SESSION-ID"

    .line 2311
    invoke-static {v3}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 2312
    invoke-static {v0, v3}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    iget-object v4, v2, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2363
    iget-object v2, v2, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    .line 33
    invoke-virtual {v0}, Lo/initLifecycle;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    const-string v2, "N/A"

    if-eqz v0, :cond_0

    sget-object v0, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    invoke-virtual {v0}, Lo/initLifecycle;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 3196
    :goto_0
    iget-object v3, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    const-string v4, "X-Device-ID"

    .line 3311
    invoke-static {v4}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 3312
    invoke-static {v0, v4}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    iget-object v5, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3363
    iget-object v3, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "X-Application-ID"

    .line 33
    sget-object v3, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    .line 34
    invoke-virtual {v3}, Lo/initLifecycle;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v2, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    invoke-virtual {v2}, Lo/initLifecycle;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    .line 4196
    :cond_1
    iget-object v3, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 4311
    invoke-static {v0}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 4312
    invoke-static {v2, v0}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 4362
    iget-object v4, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4363
    iget-object v0, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "X-OS"

    const-string v2, "android"

    .line 5196
    iget-object v3, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 5311
    invoke-static {v0}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 5312
    invoke-static {v2, v0}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 5362
    iget-object v4, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5363
    iget-object v0, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "X-OS-Version"

    .line 35
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 6196
    iget-object v3, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 6311
    invoke-static {v0}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 6312
    invoke-static {v2, v0}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 6362
    iget-object v4, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6363
    iget-object v0, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "X-App-Version"

    const-string v2, "2.1.8.4"

    .line 7196
    iget-object v3, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 7311
    invoke-static {v0}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 7312
    invoke-static {v2, v0}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 7362
    iget-object v4, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7363
    iget-object v0, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "X-App-Version-Code"

    const-string v2, "20108004"

    .line 8196
    iget-object v3, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 8311
    invoke-static {v0}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 8312
    invoke-static {v2, v0}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 8362
    iget-object v4, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8363
    iget-object v0, v3, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9292
    iget-object v0, v1, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v0, :cond_2

    .line 9293
    new-instance v0, Lo/isCompleteForChild;

    invoke-direct {v0, v1}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    .line 42
    invoke-interface {p1, v0}, Lo/annotatedName$onNavigationEvent;->onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object p1

    return-object p1

    .line 9292
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
