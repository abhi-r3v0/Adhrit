.class public final Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000b\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;",
        "",
        "canRemove",
        "",
        "(Z)V",
        "getCanRemove",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
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
.field final onNavigationEvent:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "can_remove"
        .end annotation
    .end param

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final copy(Z)Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;
    .locals 1
    .param p1    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "can_remove"
        .end annotation
    .end param

    new-instance v0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;

    invoke-direct {v0, p1}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;-><init>(Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;->onNavigationEvent:Z

    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;->onNavigationEvent:Z

    if-ne v0, p1, :cond_0

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

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBAAckResponse(canRemove="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/NBAAckResponse;->onNavigationEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
