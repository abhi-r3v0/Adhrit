.class public final Lo/setHasStableIds;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000cJ0\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0001H\u0016J\t\u0010\u0019\u001a\u00020\u0007H\u00d6\u0001J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0004\u0010\tR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/WinTypesItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "winningTypes",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;",
        "isSelected",
        "",
        "position",
        "",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;Ljava/lang/Boolean;Ljava/lang/Integer;)V",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getPosition",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getWinningTypes",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/WinTypesItem;",
        "equals",
        "other",
        "",
        "getChangePayload",
        "hashCode",
        "isSame",
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
.field final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

.field final extraCallback:Ljava/lang/Integer;

.field final onMessageChannelReady:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 1

    const-string/jumbo v0, "winningTypes"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    iput-object p2, p0, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    iput-object p3, p0, Lo/setHasStableIds;->extraCallback:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/setHasStableIds;

    if-eqz v0, :cond_0

    check-cast p1, Lo/setHasStableIds;

    iget-object v0, p0, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    iget-object v1, p1, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    iget-object v1, p1, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setHasStableIds;->extraCallback:Ljava/lang/Integer;

    iget-object p1, p1, Lo/setHasStableIds;->extraCallback:Ljava/lang/Integer;

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

.method public final getChangePayload(Lo/StaggeredGridLayoutManager;)Ljava/lang/Object;
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p1, Lo/setHasStableIds;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lo/setHasStableIds;

    iget-object p1, p1, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    iget-object v0, p0, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "selectionChanged"

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/setHasStableIds;->extraCallback:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSame(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p0

    check-cast v0, Lo/setHasStableIds;

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lo/setHasStableIds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 1028
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onPostMessage:Ljava/lang/String;

    .line 28
    check-cast p1, Lo/setHasStableIds;

    iget-object p1, p1, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 2028
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onPostMessage:Ljava/lang/String;

    .line 28
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

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WinTypesItem(winningTypes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setHasStableIds;->extraCallback:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
