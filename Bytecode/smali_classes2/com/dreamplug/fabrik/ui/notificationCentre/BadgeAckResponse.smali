.class public final Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0006J\u001a\u0010\t\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;",
        "",
        "canRemove",
        "",
        "(Ljava/lang/Boolean;)V",
        "getCanRemove",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "copy",
        "(Ljava/lang/Boolean;)Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;",
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
.field public final onPostMessage:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "can_remove"
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;->onPostMessage:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/Boolean;)Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "can_remove"
        .end annotation
    .end param

    new-instance v0, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;

    invoke-direct {v0, p1}, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;->onPostMessage:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;->onPostMessage:Ljava/lang/Boolean;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;->onPostMessage:Ljava/lang/Boolean;

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

    const-string v1, "BadgeAckResponse(canRemove="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method