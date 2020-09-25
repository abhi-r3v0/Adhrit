.class public final Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;",
        "",
        "score",
        "",
        "ts",
        "",
        "(IJ)V",
        "getScore",
        "()I",
        "getTs",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final score:I

.field private final ts:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->score:I

    iput-wide p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->ts:J

    return-void
.end method

.method public synthetic constructor <init>(IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;-><init>(IJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;IJILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->score:I

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->ts:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->copy(IJ)Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->score:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->ts:J

    return-wide v0
.end method

.method public final copy(IJ)Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;-><init>(IJ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->score:I

    iget v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->score:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->ts:J

    iget-wide v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->ts:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getScore()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->score:I

    return v0
.end method

.method public final getTs()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->ts:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->score:I

    .line 1025
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->ts:J

    .line 2025
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScoreStreamItem(score="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->ts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
