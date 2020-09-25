.class public final Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;",
        "",
        "message",
        "",
        "value",
        "",
        "details",
        "Lcom/dreamplug/fabrik/ui/control/CashBackDetails;",
        "(Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/control/CashBackDetails;)V",
        "getDetails",
        "()Lcom/dreamplug/fabrik/ui/control/CashBackDetails;",
        "getMessage",
        "()Ljava/lang/String;",
        "getValue",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field private final details:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

.field private final message:Ljava/lang/String;

.field private final value:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/control/CashBackDetails;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->message:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->value:Z

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->details:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/control/CashBackDetails;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->message:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->value:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->details:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->copy(Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/control/CashBackDetails;)Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->value:Z

    return v0
.end method

.method public final component3()Lcom/dreamplug/fabrik/ui/control/CashBackDetails;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->details:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/control/CashBackDetails;)Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;-><init>(Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/control/CashBackDetails;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->value:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->value:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->details:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->details:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

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

.method public final getDetails()Lcom/dreamplug/fabrik/ui/control/CashBackDetails;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->details:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->value:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->message:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->value:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->details:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CashBackDisabled(message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->details:Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
