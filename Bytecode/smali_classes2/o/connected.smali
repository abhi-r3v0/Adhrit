.class final Lo/connected;
.super Lo/getMinKey$extraCallback;
.source ""


# instance fields
.field private final extraCallback:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "**>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/deleteTrackedQuery;

.field private final onPostMessage:Lo/getPredecessorKey;


# direct methods
.method constructor <init>(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "**>;",
            "Lo/getPredecessorKey;",
            "Lo/deleteTrackedQuery;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lo/getMinKey$extraCallback;-><init>()V

    if-eqz p1, :cond_2

    .line 36
    check-cast p1, Lo/reverseIterator;

    iput-object p1, p0, Lo/connected;->extraCallback:Lo/reverseIterator;

    if-eqz p2, :cond_1

    .line 37
    check-cast p2, Lo/getPredecessorKey;

    iput-object p2, p0, Lo/connected;->onPostMessage:Lo/getPredecessorKey;

    if-eqz p3, :cond_0

    .line 38
    check-cast p3, Lo/deleteTrackedQuery;

    iput-object p3, p0, Lo/connected;->onNavigationEvent:Lo/deleteTrackedQuery;

    return-void

    .line 3910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callOptions"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "headers"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/deleteTrackedQuery;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/connected;->onNavigationEvent:Lo/deleteTrackedQuery;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_6

    .line 64
    :cond_1
    check-cast p1, Lo/connected;

    .line 65
    iget-object v2, p0, Lo/connected;->onNavigationEvent:Lo/deleteTrackedQuery;

    iget-object v3, p1, Lo/connected;->onNavigationEvent:Lo/deleteTrackedQuery;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    .line 4052
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_8

    .line 65
    iget-object v2, p0, Lo/connected;->onPostMessage:Lo/getPredecessorKey;

    iget-object v3, p1, Lo/connected;->onPostMessage:Lo/getPredecessorKey;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_4

    .line 5052
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_8

    .line 66
    iget-object v2, p0, Lo/connected;->extraCallback:Lo/reverseIterator;

    iget-object p1, p1, Lo/connected;->extraCallback:Lo/reverseIterator;

    if-eq v2, p1, :cond_7

    if-eqz v2, :cond_6

    .line 6052
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_8

    return v0

    :cond_8
    :goto_6
    return v1
.end method

.method public final extraCallback()Lo/getPredecessorKey;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/connected;->onPostMessage:Lo/getPredecessorKey;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lo/connected;->onNavigationEvent:Lo/deleteTrackedQuery;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/connected;->onPostMessage:Lo/getPredecessorKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/connected;->extraCallback:Lo/reverseIterator;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Lo/reverseIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/reverseIterator<",
            "**>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/connected;->extraCallback:Lo/reverseIterator;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/connected;->extraCallback:Lo/reverseIterator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/connected;->onPostMessage:Lo/getPredecessorKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/connected;->onNavigationEvent:Lo/deleteTrackedQuery;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
