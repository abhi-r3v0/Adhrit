.class public final Lo/ResourceManagerInternal$onNavigationEvent;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ResourceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0013\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00c6\u0003J;\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001c\u001a\u00020\u0001H\u0016J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\t\u0010\"\u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u000f\"\u0004\u0008\u0012\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/instrumentlist/adapter/CheckoutInstrumentViewHolder$InstrumentItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "instrument",
        "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
        "showRadioButton",
        "",
        "isSelected",
        "isEnrolled",
        "instrumentViewContext",
        "",
        "(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;ZZZLjava/lang/String;)V",
        "getInstrument",
        "()Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
        "getInstrumentViewContext",
        "()Ljava/lang/String;",
        "()Z",
        "setEnrolled",
        "(Z)V",
        "setSelected",
        "getShowRadioButton",
        "setShowRadioButton",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "getChangePayload",
        "hashCode",
        "",
        "isSame",
        "toString",
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
.field public final ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

.field extraCallback:Z

.field onMessageChannelReady:Z

.field final onNavigationEvent:Ljava/lang/String;

.field onPostMessage:Z


# direct methods
.method public constructor <init>(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;ZZZLjava/lang/String;)V
    .locals 1

    const-string v0, "instrument"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instrumentViewContext"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    iput-boolean p2, p0, Lo/ResourceManagerInternal$onNavigationEvent;->extraCallback:Z

    iput-boolean p3, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onPostMessage:Z

    iput-boolean p4, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onMessageChannelReady:Z

    iput-object p5, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/ResourceManagerInternal$onNavigationEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lo/ResourceManagerInternal$onNavigationEvent;

    iget-object v0, p0, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    iget-object v1, p1, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/ResourceManagerInternal$onNavigationEvent;->extraCallback:Z

    iget-boolean v1, p1, Lo/ResourceManagerInternal$onNavigationEvent;->extraCallback:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onPostMessage:Z

    iget-boolean v1, p1, Lo/ResourceManagerInternal$onNavigationEvent;->onPostMessage:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onMessageChannelReady:Z

    iget-boolean v1, p1, Lo/ResourceManagerInternal$onNavigationEvent;->onMessageChannelReady:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object p1, p1, Lo/ResourceManagerInternal$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

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

    .line 127
    instance-of v0, p1, Lo/ResourceManagerInternal$onNavigationEvent;

    if-eqz v0, :cond_1

    check-cast p1, Lo/ResourceManagerInternal$onNavigationEvent;

    iget-object v0, p1, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    iget-object v1, p0, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-boolean v0, p1, Lo/ResourceManagerInternal$onNavigationEvent;->onPostMessage:Z

    iget-boolean v1, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onPostMessage:Z

    if-eq v0, v1, :cond_0

    const-string/jumbo p1, "selection"

    return-object p1

    .line 130
    :cond_0
    iget-boolean p1, p1, Lo/ResourceManagerInternal$onNavigationEvent;->onMessageChannelReady:Z

    iget-boolean v0, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onMessageChannelReady:Z

    if-eq p1, v0, :cond_1

    const-string p1, "enrolled"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/ResourceManagerInternal$onNavigationEvent;->extraCallback:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onPostMessage:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSame(Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 1164
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 123
    instance-of v1, p1, Lo/ResourceManagerInternal$onNavigationEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Lo/ResourceManagerInternal$onNavigationEvent;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    if-eqz p1, :cond_1

    .line 2164
    iget-object v2, p1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 123
    :cond_1
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstrumentItem(instrument="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showRadioButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/ResourceManagerInternal$onNavigationEvent;->extraCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onPostMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEnrolled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onMessageChannelReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", instrumentViewContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ResourceManagerInternal$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
