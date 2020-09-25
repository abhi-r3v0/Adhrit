.class public Lo/forget;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lo/isCacheableHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/forget$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lo/isCacheableHost;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u001f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016J\t\u0010\u0014\u001a\u00020\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/ranges/LongProgression;",
        "",
        "",
        "start",
        "endInclusive",
        "step",
        "(JJJ)V",
        "first",
        "getFirst",
        "()J",
        "last",
        "getLast",
        "getStep",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "isEmpty",
        "iterator",
        "Lkotlin/collections/LongIterator;",
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


# static fields
.field public static final onPostMessage:Lo/forget$onPostMessage;


# instance fields
.field public final ICustomTabsCallback:J

.field public final extraCallback:J

.field public final onMessageChannelReady:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/forget$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/forget$onPostMessage;-><init>(B)V

    sput-object v0, Lo/forget;->onPostMessage:Lo/forget$onPostMessage;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 7

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-eqz v2, :cond_5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v3, p5, v0

    if-eqz v3, :cond_4

    .line 144
    iput-wide p1, p0, Lo/forget;->ICustomTabsCallback:J

    if-lez v2, :cond_1

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p3

    move-wide v2, p1

    move-wide v4, p5

    .line 2069
    invoke-static/range {v0 .. v5}, Lo/extraCallback;->onNavigationEvent(JJJ)J

    move-result-wide p1

    sub-long/2addr p3, p1

    goto :goto_0

    :cond_1
    if-gez v2, :cond_3

    cmp-long v0, p1, p3

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    neg-long v5, p5

    move-wide v1, p1

    move-wide v3, p3

    .line 2070
    invoke-static/range {v1 .. v6}, Lo/extraCallback;->onNavigationEvent(JJJ)J

    move-result-wide p1

    add-long/2addr p3, p1

    .line 149
    :goto_0
    iput-wide p3, p0, Lo/forget;->extraCallback:J

    .line 154
    iput-wide p5, p0, Lo/forget;->onMessageChannelReady:J

    return-void

    .line 2071
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step is zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 138
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 137
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 7

    .line 159
    iget-wide v0, p0, Lo/forget;->onMessageChannelReady:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    iget-wide v0, p0, Lo/forget;->ICustomTabsCallback:J

    iget-wide v4, p0, Lo/forget;->extraCallback:J

    if-lez v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 162
    instance-of v0, p1, Lo/forget;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/forget;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/forget;

    invoke-virtual {v0}, Lo/forget;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lo/forget;->ICustomTabsCallback:J

    check-cast p1, Lo/forget;

    iget-wide v2, p1, Lo/forget;->ICustomTabsCallback:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-wide v0, p0, Lo/forget;->extraCallback:J

    iget-wide v2, p1, Lo/forget;->extraCallback:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-wide v0, p0, Lo/forget;->onMessageChannelReady:J

    iget-wide v2, p1, Lo/forget;->onMessageChannelReady:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 9

    .line 166
    invoke-virtual {p0}, Lo/forget;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lo/forget;->ICustomTabsCallback:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    const-wide/16 v3, 0x1f

    mul-long v0, v0, v3

    iget-wide v5, p0, Lo/forget;->extraCallback:J

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    add-long/2addr v0, v5

    mul-long v0, v0, v3

    iget-wide v3, p0, Lo/forget;->onMessageChannelReady:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 8

    .line 1156
    new-instance v7, Lo/applyOperationToView;

    iget-wide v1, p0, Lo/forget;->ICustomTabsCallback:J

    iget-wide v3, p0, Lo/forget;->extraCallback:J

    iget-wide v5, p0, Lo/forget;->onMessageChannelReady:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/applyOperationToView;-><init>(JJJ)V

    check-cast v7, Lo/ensureSessionIdentifier;

    .line 129
    check-cast v7, Ljava/util/Iterator;

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 168
    iget-wide v0, p0, Lo/forget;->onMessageChannelReady:J

    const-string v2, " step "

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    new-instance v0, Ljava/lang/StringBuilder;

    if-lez v5, :cond_0

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lo/forget;->ICustomTabsCallback:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lo/forget;->extraCallback:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/forget;->onMessageChannelReady:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lo/forget;->ICustomTabsCallback:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " downTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lo/forget;->extraCallback:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/forget;->onMessageChannelReady:J

    neg-long v1, v1

    goto :goto_0
.end method
