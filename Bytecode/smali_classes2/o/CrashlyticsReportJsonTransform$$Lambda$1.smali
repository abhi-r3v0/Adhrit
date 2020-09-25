.class final Lo/CrashlyticsReportJsonTransform$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReportJsonTransform$$Lambda$6;


# instance fields
.field final taskCompletionSource:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/removeBackgroundStateChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$1;->taskCompletionSource:Lo/removeBackgroundStateChangeListener;

    return-void
.end method


# virtual methods
.method public final onException(Lo/jsonFromMapEntryString;Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onStateReached(Lo/jsonFromMapEntryString;)Z
    .locals 1

    .line 33
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isUnregistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isErrored()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$1;->taskCompletionSource:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object p1

    .line 1010
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
