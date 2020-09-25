.class public final Lo/parse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final active:Z

.field public final complete:Z

.field public final id:J

.field public final lastUse:J

.field public final querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;


# direct methods
.method public constructor <init>(JLo/lambda$awaitEvenIfOnMainThread$0;JZZ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lo/parse;->id:J

    .line 29
    invoke-virtual {p3}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lo/lambda$awaitEvenIfOnMainThread$0;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create TrackedQuery for a non-default query that loads all data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    :goto_0
    iput-object p3, p0, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 34
    iput-wide p4, p0, Lo/parse;->lastUse:J

    .line 35
    iput-boolean p6, p0, Lo/parse;->complete:Z

    .line 36
    iput-boolean p7, p0, Lo/parse;->active:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    check-cast p1, Lo/parse;

    .line 61
    iget-wide v2, p0, Lo/parse;->id:J

    iget-wide v4, p1, Lo/parse;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    iget-object v3, p1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lo/parse;->lastUse:J

    iget-wide v4, p1, Lo/parse;->lastUse:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lo/parse;->complete:Z

    iget-boolean v3, p1, Lo/parse;->complete:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lo/parse;->active:Z

    iget-boolean p1, p1, Lo/parse;->active:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 70
    iget-wide v0, p0, Lo/parse;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-wide v1, p0, Lo/parse;->lastUse:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-boolean v1, p0, Lo/parse;->complete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-boolean v1, p0, Lo/parse;->active:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setActiveState(Z)Lo/parse;
    .locals 9

    .line 48
    new-instance v8, Lo/parse;

    iget-wide v1, p0, Lo/parse;->id:J

    iget-object v3, p0, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    iget-wide v4, p0, Lo/parse;->lastUse:J

    iget-boolean v6, p0, Lo/parse;->complete:Z

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lo/parse;-><init>(JLo/lambda$awaitEvenIfOnMainThread$0;JZZ)V

    return-object v8
.end method

.method public final setComplete()Lo/parse;
    .locals 9

    .line 44
    new-instance v8, Lo/parse;

    iget-wide v1, p0, Lo/parse;->id:J

    iget-object v3, p0, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    iget-wide v4, p0, Lo/parse;->lastUse:J

    iget-boolean v7, p0, Lo/parse;->active:Z

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/parse;-><init>(JLo/lambda$awaitEvenIfOnMainThread$0;JZZ)V

    return-object v8
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrackedQuery{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/parse;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", querySpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/parse;->lastUse:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/parse;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/parse;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateLastUse(J)Lo/parse;
    .locals 9

    .line 40
    new-instance v8, Lo/parse;

    iget-wide v1, p0, Lo/parse;->id:J

    iget-object v3, p0, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    iget-boolean v6, p0, Lo/parse;->complete:Z

    iget-boolean v7, p0, Lo/parse;->active:Z

    move-object v0, v8

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lo/parse;-><init>(JLo/lambda$awaitEvenIfOnMainThread$0;JZZ)V

    return-object v8
.end method
