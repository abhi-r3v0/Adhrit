.class public final Lo/onSearchClicked;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSearchClicked$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/net/GzipRequestInterceptor;",
        "Lokhttp3/Interceptor;",
        "()V",
        "gzip",
        "Lokhttp3/RequestBody;",
        "body",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "Companion",
        "dd-sdk-android_release"
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;
    .locals 7

    const-string v0, "chain"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lo/annotatedName$onNavigationEvent;->onNavigationEvent()Lo/isCompleteForChild;

    move-result-object v0

    const-string v1, "chain.request()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    iget-object v1, v0, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    if-eqz v1, :cond_2

    .line 2061
    iget-object v2, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 2063
    iget-object v2, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v3, "Content-Encoding"

    invoke-static {v2, v3}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2093
    :cond_0
    new-instance v2, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>(Lo/isCompleteForChild;)V

    const-string v4, "gzip"

    .line 2184
    iget-object v5, v2, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 2383
    invoke-static {v3}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 2384
    invoke-static {v4, v3}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    invoke-virtual {v5, v3}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 3362
    iget-object v6, v5, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3363
    iget-object v3, v5, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4053
    iget-object v0, v0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 5050
    new-instance v3, Lo/onSearchClicked$extraCallback;

    invoke-direct {v3, v1}, Lo/onSearchClicked$extraCallback;-><init>(Lo/isCompleteForPath;)V

    check-cast v3, Lo/isCompleteForPath;

    .line 39
    invoke-virtual {v2, v0, v3}, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Lo/isCompleteForPath;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v0

    .line 5292
    iget-object v1, v0, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v1, :cond_1

    .line 5293
    new-instance v1, Lo/isCompleteForChild;

    invoke-direct {v1, v0}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    .line 41
    invoke-interface {p1, v1}, Lo/annotatedName$onNavigationEvent;->onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object p1

    const-string v0, "chain.proceed(compressedRequest)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 5292
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_2
    :goto_0
    invoke-interface {p1, v0}, Lo/annotatedName$onNavigationEvent;->onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object p1

    const-string v0, "chain.proceed(originalRequest)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
