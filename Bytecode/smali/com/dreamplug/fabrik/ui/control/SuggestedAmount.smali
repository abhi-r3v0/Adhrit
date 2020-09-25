.class public final Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;
.super Lo/StaggeredGridLayoutManager;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0001H\u0016J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\u0010\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "amount",
        "",
        "selected",
        "",
        "(DZ)V",
        "getAmount",
        "()D",
        "getSelected",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "getChangePayload",
        "hashCode",
        "",
        "isEqual",
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

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field private final amount:D

.field private final selected:Z


# direct methods
.method public constructor <init>(DZ)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-wide p1, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    iput-boolean p3, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    return-void
.end method

.method public synthetic constructor <init>(DZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 62
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;-><init>(DZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;DZILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-boolean p3, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->copy(DZ)Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    return-wide v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    return v0
.end method

.method public final copy(DZ)Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;-><init>(DZ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    iget-wide v2, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

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

.method public final getAmount()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    return-wide v0
.end method

.method public final getChangePayload(Lo/StaggeredGridLayoutManager;)Ljava/lang/Object;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    if-eq v0, p1, :cond_0

    const-string/jumbo p1, "selected"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSelected()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    .line 1025
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEqual(Ljava/lang/Object;)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    iget-wide v2, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    iget-wide v4, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    cmpg-double v0, v2, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final isSame(Ljava/lang/Object;)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget-wide v2, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    iget-wide v4, p1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    cmpg-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuggestedAmount(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
