.class public final Lo/AggregateException;
.super Lo/WorkerParameters;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/WorkerParameters<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/WorkerParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(F)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lo/WorkerParameters;->ICustomTabsCallback(F)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;ZLjava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lo/WorkerParameters;->onNavigationEvent(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/Throwable;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 68
    check-cast p1, Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lo/WorkerParameters;->onNavigationEvent(Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2215
    throw p1
.end method
