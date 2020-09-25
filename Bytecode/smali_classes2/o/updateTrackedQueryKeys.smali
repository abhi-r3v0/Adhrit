.class public final Lo/updateTrackedQueryKeys;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/updateTrackedQueryKeys$onMessageChannelReady;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lo/updateTrackedQueryKeys$3;

    invoke-direct {v0}, Lo/updateTrackedQueryKeys$3;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/pruneCache;Ljava/util/List;)Lo/pruneCache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/pruneCache;",
            "Ljava/util/List<",
            "+",
            "Lo/loadTrackedQueryKeys;",
            ">;)",
            "Lo/pruneCache;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/loadTrackedQueryKeys;

    .line 89
    new-instance v1, Lo/updateTrackedQueryKeys$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lo/updateTrackedQueryKeys$onMessageChannelReady;-><init>(Lo/pruneCache;Lo/loadTrackedQueryKeys;B)V

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object p0

    .line 1910
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "channel"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs onNavigationEvent(Lo/pruneCache;[Lo/loadTrackedQueryKeys;)Lo/pruneCache;
    .locals 0

    .line 74
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lo/updateTrackedQueryKeys;->onMessageChannelReady(Lo/pruneCache;Ljava/util/List;)Lo/pruneCache;

    move-result-object p0

    return-object p0
.end method
