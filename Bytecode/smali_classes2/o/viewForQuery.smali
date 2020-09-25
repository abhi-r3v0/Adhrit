.class public final Lo/viewForQuery;
.super Lo/forEachChild;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "kotlin/ranges/RangesKt__RangesKt",
        "kotlin/ranges/RangesKt___RangesKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x1,
        0x10
    }
    xi = 0x1
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/forEachChild;-><init>()V

    return-void
.end method

.method public static final extraCallback(III)I
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    .line 1087
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final onMessageChannelReady(Lo/forEachTree;Lo/getRootNode;)I
    .locals 3

    const-string v0, "$this$random"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "$this$nextInt"

    .line 59
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2087
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 2092
    iget v1, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 3092
    iget v0, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_1

    .line 4087
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 4092
    iget p0, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    add-int/2addr p0, v2

    .line 1316
    invoke-virtual {p1, v0, p0}, Lo/getRootNode;->extraCallback(II)I

    move-result p0

    return p0

    .line 5087
    :cond_1
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_2

    .line 6087
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    sub-int/2addr v0, v2

    .line 6092
    iget p0, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    .line 1317
    invoke-virtual {p1, v0, p0}, Lo/getRootNode;->extraCallback(II)I

    move-result p0

    add-int/2addr p0, v2

    return p0

    .line 1318
    :cond_2
    invoke-virtual {p1}, Lo/getRootNode;->onNavigationEvent()I

    move-result p0

    return p0

    .line 1315
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get random in empty range: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 61
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final onNavigationEvent(Lo/forget;J)Lo/forget;
    .locals 10

    const-string v0, "$this$step"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 648
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v2, v3}, Lo/viewForQuery;->onNavigationEvent(ZLjava/lang/Number;)V

    .line 649
    sget-object v2, Lo/forget;->onPostMessage:Lo/forget$onPostMessage;

    .line 6144
    iget-wide v4, p0, Lo/forget;->ICustomTabsCallback:J

    .line 6149
    iget-wide v6, p0, Lo/forget;->extraCallback:J

    .line 6154
    iget-wide v2, p0, Lo/forget;->onMessageChannelReady:J

    cmp-long p0, v2, v0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-long p1, p1

    :goto_1
    move-wide v8, p1

    .line 6179
    new-instance p0, Lo/forget;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lo/forget;-><init>(JJJ)V

    return-object p0
.end method
