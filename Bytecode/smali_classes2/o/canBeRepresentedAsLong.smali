.class public Lo/canBeRepresentedAsLong;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lo/isCacheableHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/canBeRepresentedAsLong$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u001f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/ranges/IntProgression;",
        "",
        "",
        "start",
        "endInclusive",
        "step",
        "(III)V",
        "first",
        "getFirst",
        "()I",
        "last",
        "getLast",
        "getStep",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "isEmpty",
        "iterator",
        "Lkotlin/collections/IntIterator;",
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
.field public static final onNavigationEvent:Lo/canBeRepresentedAsLong$onNavigationEvent;


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:I

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/canBeRepresentedAsLong$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/canBeRepresentedAsLong$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/canBeRepresentedAsLong;->onNavigationEvent:Lo/canBeRepresentedAsLong$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_5

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_4

    .line 87
    iput p1, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    if-lez p3, :cond_1

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 2046
    :cond_0
    invoke-static {p2, p1, p3}, Lo/extraCallback;->ICustomTabsCallback(III)I

    move-result p1

    sub-int/2addr p2, p1

    goto :goto_0

    :cond_1
    if-gez p3, :cond_3

    if-gt p1, p2, :cond_2

    goto :goto_0

    :cond_2
    neg-int v0, p3

    .line 2047
    invoke-static {p1, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(III)I

    move-result p1

    add-int/2addr p2, p1

    .line 92
    :goto_0
    iput p2, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    .line 97
    iput p3, p0, Lo/canBeRepresentedAsLong;->onPostMessage:I

    return-void

    .line 2048
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step is zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 81
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 80
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 4

    .line 102
    iget v0, p0, Lo/canBeRepresentedAsLong;->onPostMessage:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    iget v3, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    if-le v0, v3, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    iget v3, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    if-ge v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 105
    instance-of v0, p1, Lo/canBeRepresentedAsLong;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/canBeRepresentedAsLong;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/canBeRepresentedAsLong;

    invoke-virtual {v0}, Lo/canBeRepresentedAsLong;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    check-cast p1, Lo/canBeRepresentedAsLong;

    iget v1, p1, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    iget v1, p1, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo/canBeRepresentedAsLong;->onPostMessage:I

    iget p1, p1, Lo/canBeRepresentedAsLong;->onPostMessage:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 109
    invoke-virtual {p0}, Lo/canBeRepresentedAsLong;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/canBeRepresentedAsLong;->onPostMessage:I

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 4

    .line 1099
    new-instance v0, Lo/visitChild;

    iget v1, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    iget v2, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    iget v3, p0, Lo/canBeRepresentedAsLong;->onPostMessage:I

    invoke-direct {v0, v1, v2, v3}, Lo/visitChild;-><init>(III)V

    check-cast v0, Lo/ensureRunLoop;

    .line 72
    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    iget v0, p0, Lo/canBeRepresentedAsLong;->onPostMessage:I

    const-string v1, " step "

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/canBeRepresentedAsLong;->onPostMessage:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/canBeRepresentedAsLong;->onPostMessage:I

    neg-int v1, v1

    goto :goto_0
.end method
