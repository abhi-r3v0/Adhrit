.class public final Lo/applyOperation;
.super Lo/forget;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/applyOperation$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/forget;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0015B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0096\u0002J\u0013\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000bH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlin/ranges/LongRange;",
        "Lkotlin/ranges/LongProgression;",
        "Lkotlin/ranges/ClosedRange;",
        "",
        "start",
        "endInclusive",
        "(JJ)V",
        "getEndInclusive",
        "()Ljava/lang/Long;",
        "getStart",
        "contains",
        "",
        "value",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "isEmpty",
        "toString",
        "",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 84
    new-instance v0, Lo/applyOperation;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/applyOperation;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 7

    const-wide/16 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 65
    invoke-direct/range {v0 .. v6}, Lo/forget;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 5

    .line 1144
    iget-wide v0, p0, Lo/forget;->ICustomTabsCallback:J

    .line 1149
    iget-wide v2, p0, Lo/forget;->extraCallback:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 74
    instance-of v0, p1, Lo/applyOperation;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2144
    iget-wide v2, p0, Lo/forget;->ICustomTabsCallback:J

    .line 2149
    iget-wide v4, p0, Lo/forget;->extraCallback:J

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 74
    move-object v2, p1

    check-cast v2, Lo/applyOperation;

    .line 3144
    iget-wide v3, v2, Lo/forget;->ICustomTabsCallback:J

    .line 3149
    iget-wide v5, v2, Lo/forget;->extraCallback:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    .line 4144
    :cond_2
    iget-wide v2, p0, Lo/forget;->ICustomTabsCallback:J

    .line 74
    check-cast p1, Lo/applyOperation;

    .line 5144
    iget-wide v4, p1, Lo/forget;->ICustomTabsCallback:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 5149
    iget-wide v2, p0, Lo/forget;->extraCallback:J

    .line 6149
    iget-wide v4, p1, Lo/forget;->extraCallback:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 7144
    iget-wide v0, p0, Lo/forget;->ICustomTabsCallback:J

    .line 7149
    iget-wide v2, p0, Lo/forget;->extraCallback:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const-wide/16 v0, 0x1f

    .line 8144
    iget-wide v2, p0, Lo/forget;->ICustomTabsCallback:J

    .line 9144
    iget-wide v4, p0, Lo/forget;->ICustomTabsCallback:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    mul-long v2, v2, v0

    .line 9149
    iget-wide v0, p0, Lo/forget;->extraCallback:J

    .line 10149
    iget-wide v4, p0, Lo/forget;->extraCallback:J

    ushr-long/2addr v4, v6

    xor-long/2addr v0, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11144
    iget-wide v1, p0, Lo/forget;->ICustomTabsCallback:J

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11149
    iget-wide v1, p0, Lo/forget;->extraCallback:J

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
