.class public final Lo/isVisible$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isVisible;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZILjava/util/List;Lo/getScrapOrCachedViewForId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/batcher/network/NetworkHelper$createServerRequest$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Ljava/lang/Void;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/isVisible;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/getScrapOrCachedViewForId;

.field private synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/isVisible;Lo/getScrapOrCachedViewForId;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrCachedViewForId;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lo/isVisible$onPostMessage;->ICustomTabsCallback:Lo/isVisible;

    iput-object p2, p0, Lo/isVisible$onPostMessage;->onNavigationEvent:Lo/getScrapOrCachedViewForId;

    iput-object p3, p0, Lo/isVisible$onPostMessage;->extraCallback:Ljava/lang/String;

    iput p4, p0, Lo/isVisible$onPostMessage;->onMessageChannelReady:I

    iput-object p5, p0, Lo/isVisible$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lo/isVisible$onPostMessage;->onNavigationEvent:Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, p1}, Lo/getScrapOrCachedViewForId;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    .line 66
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string v1, "pairs"

    const-string/jumbo v2, "source"

    const/4 v3, 0x2

    const-string v4, "count"

    const/4 v5, 0x1

    const-string/jumbo v6, "url"

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/16 v9, 0x5d

    const-string v10, "onResponse() called with: result = ["

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lo/isVisible$onPostMessage;->ICustomTabsCallback:Lo/isVisible;

    .line 1019
    iget-object v0, v0, Lo/isVisible;->onPostMessage:Ljava/lang/String;

    .line 67
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v8, [Lo/addWrite;

    .line 70
    iget-object v0, p0, Lo/isVisible$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 1043
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v6, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, p1, v7

    .line 71
    iget v0, p0, Lo/isVisible$onPostMessage;->onMessageChannelReady:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, p1, v5

    .line 72
    iget-object v0, p0, Lo/isVisible$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p1, v3

    .line 69
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "BatcherApiSuccess"

    .line 68
    invoke-static {p1, v0}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 77
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lo/isVisible$onPostMessage;->ICustomTabsCallback:Lo/isVisible;

    .line 4019
    iget-object v0, v0, Lo/isVisible;->onPostMessage:Ljava/lang/String;

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v9, "tag"

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4065
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v8, [Lo/addWrite;

    .line 81
    iget-object v0, p0, Lo/isVisible$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 5043
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v6, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, p1, v7

    .line 82
    iget v0, p0, Lo/isVisible$onPostMessage;->onMessageChannelReady:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 6043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, p1, v5

    .line 83
    iget-object v0, p0, Lo/isVisible$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p1, v3

    .line 80
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "BatcherApiFailure"

    .line 79
    invoke-static {p1, v0}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
