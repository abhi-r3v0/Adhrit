.class public final Lo/ScrollingTabContainerView;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/adapter/SetupUpiInstrument;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "type",
        "",
        "showUpiAppsButton",
        "",
        "status",
        "Lcom/cred/pay/repository/models/Status;",
        "(IZLcom/cred/pay/repository/models/Status;)V",
        "getShowUpiAppsButton",
        "()Z",
        "getStatus",
        "()Lcom/cred/pay/repository/models/Status;",
        "getType",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final extraCallback:Z

.field final onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

.field final onPostMessage:I


# direct methods
.method public synthetic constructor <init>(ILcom/cred/pay/repository/models/Status;)V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1, v0, p2}, Lo/ScrollingTabContainerView;-><init>(IZLcom/cred/pay/repository/models/Status;)V

    return-void
.end method

.method public constructor <init>(IZLcom/cred/pay/repository/models/Status;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput p1, p0, Lo/ScrollingTabContainerView;->onPostMessage:I

    iput-boolean p2, p0, Lo/ScrollingTabContainerView;->extraCallback:Z

    iput-object p3, p0, Lo/ScrollingTabContainerView;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    check-cast p1, Lo/ScrollingTabContainerView;

    iget v0, p0, Lo/ScrollingTabContainerView;->onPostMessage:I

    iget v1, p1, Lo/ScrollingTabContainerView;->onPostMessage:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/ScrollingTabContainerView;->extraCallback:Z

    iget-boolean v1, p1, Lo/ScrollingTabContainerView;->extraCallback:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/ScrollingTabContainerView;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    iget-object p1, p1, Lo/ScrollingTabContainerView;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

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
    .locals 2

    iget v0, p0, Lo/ScrollingTabContainerView;->onPostMessage:I

    .line 1025
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/ScrollingTabContainerView;->extraCallback:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/ScrollingTabContainerView;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetupUpiInstrument(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/ScrollingTabContainerView;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showUpiAppsButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/ScrollingTabContainerView;->extraCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ScrollingTabContainerView;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
