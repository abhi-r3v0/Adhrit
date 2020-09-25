.class abstract Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback$Stub;
.super Lo/AutoValue_CrashlyticsReportWithSessionId;
.source ""

# interfaces
.implements Lo/AutoValue_CrashlyticsReportWithSessionId$asBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/AutoValue_CrashlyticsReportWithSessionId<",
        "TV;>;",
        "Lo/AutoValue_CrashlyticsReportWithSessionId$asBinder<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 0

    .line 118
    invoke-super {p0, p1}, Lo/AutoValue_CrashlyticsReportWithSessionId;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 90
    invoke-super {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 97
    invoke-super {p0, p1, p2, p3}, Lo/AutoValue_CrashlyticsReportWithSessionId;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 107
    invoke-super {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 102
    invoke-super {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->isDone()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
