.class public final Lcom/dreamplug/androidapp/ui/rating/EventsMapping;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/rating/EventsMapping;",
        "",
        "eventName",
        "",
        "happyFlow",
        "",
        "duration",
        "",
        "(Ljava/lang/String;ZI)V",
        "getDuration",
        "()I",
        "getEventName",
        "()Ljava/lang/String;",
        "getHappyFlow",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
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


# instance fields
.field private final duration:I

.field private final eventName:Ljava/lang/String;

.field private final happyFlow:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->eventName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->happyFlow:Z

    iput p3, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->duration:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/ui/rating/EventsMapping;Ljava/lang/String;ZIILjava/lang/Object;)Lcom/dreamplug/androidapp/ui/rating/EventsMapping;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->eventName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->happyFlow:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->duration:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->copy(Ljava/lang/String;ZI)Lcom/dreamplug/androidapp/ui/rating/EventsMapping;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->happyFlow:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->duration:I

    return v0
.end method

.method public final copy(Ljava/lang/String;ZI)Lcom/dreamplug/androidapp/ui/rating/EventsMapping;
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;-><init>(Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->eventName:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->eventName:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->happyFlow:Z

    iget-boolean v1, p1, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->happyFlow:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->duration:I

    iget p1, p1, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->duration:I

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

.method public final getDuration()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->duration:I

    return v0
.end method

.method public final getEventName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHappyFlow()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->happyFlow:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->eventName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->happyFlow:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->duration:I

    .line 1025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventsMapping(eventName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", happyFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->happyFlow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/androidapp/ui/rating/EventsMapping;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
