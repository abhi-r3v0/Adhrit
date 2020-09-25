.class public final Lo/dispatchNestedPreFling;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/StatisticsRespItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "responseItem",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;)V",
        "getResponseItem",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field final onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;)V
    .locals 1

    const-string/jumbo v0, "responseItem"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/dispatchNestedPreFling;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/dispatchNestedPreFling;

    if-eqz v0, :cond_0

    check-cast p1, Lo/dispatchNestedPreFling;

    iget-object v0, p0, Lo/dispatchNestedPreFling;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;

    iget-object p1, p1, Lo/dispatchNestedPreFling;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lo/dispatchNestedPreFling;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatisticsRespItem(responseItem="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchNestedPreFling;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
