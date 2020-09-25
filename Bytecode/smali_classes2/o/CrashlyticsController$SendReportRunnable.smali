.class abstract Lo/CrashlyticsController$SendReportRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/logException;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lo/CrashlyticsController$SendReportRunnable;->getProvider(Ljava/lang/Class;)Lo/access$lambda$4;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_0
    invoke-interface {p1}, Lo/access$lambda$4;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lo/CrashlyticsController$SendReportRunnable;->setOfProvider(Ljava/lang/Class;)Lo/access$lambda$4;

    move-result-object p1

    invoke-interface {p1}, Lo/access$lambda$4;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method
