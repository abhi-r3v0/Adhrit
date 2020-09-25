.class public final Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRequestSendAccessibilityEvent;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0014\u0010\u0005\u001a\u00020\u00002\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006J\u0006\u0010\u0007\u001a\u00020\u0000J\u0006\u0010\t\u001a\u00020\u0000J\u001a\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0013J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/batcher/Batcher$Builder;",
        "",
        "()V",
        "data",
        "",
        "dataList",
        "",
        "gzip",
        "",
        "immediate",
        "isList",
        "mapData",
        "",
        "method",
        "url",
        "batch",
        "",
        "onBatchCreated",
        "Lkotlin/Function0;",
        "Lcom/dreamplug/batcher/Batcher$Method;",
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
.field public ICustomTabsCallback:Z

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Z

.field public onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getServerTime;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 89
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    iget-object v3, p0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget-object v2, p0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    iget-object v5, p0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-boolean v6, p0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->ICustomTabsCallback:Z

    iget-boolean v7, p0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onNavigationEvent:Z

    const-string v0, "method"

    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    sget-object v0, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1037
    new-instance v9, Lo/getAccessibilityNodeProvider$onNavigationEvent;

    const/4 v4, 0x0

    move-object v1, v9

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lo/getAccessibilityNodeProvider$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLo/getServerTime;)V

    check-cast v9, Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 98
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Invalid URL"

    invoke-static {p1, v0}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
