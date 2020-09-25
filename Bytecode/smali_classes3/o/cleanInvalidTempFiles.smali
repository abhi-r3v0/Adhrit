.class public final Lo/cleanInvalidTempFiles;
.super Lo/writeSessionOS;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/writeSessionOS<",
        "Ljava/lang/String;",
        "Lo/access$1100;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lo/getChannelsFetchIntervalLaidback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lo/writeSessionOS;-><init>(I)V

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lo/getChannelsFetchIntervalLaidback;

    invoke-direct {v0, p1, p2}, Lo/getChannelsFetchIntervalLaidback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/cleanInvalidTempFiles;->zza:Lo/getChannelsFetchIntervalLaidback;

    return-void

    .line 1008
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "code cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "verifyPasswordResetCode"

    return-object v0
.end method

.method public final synthetic zza(Lo/finalizePreviousNativeSession;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    new-instance v0, Lo/writeNonFatalEventsTo;

    invoke-direct {v0, p0, p2}, Lo/writeNonFatalEventsTo;-><init>(Lo/writeSessionOS;Lo/removeBackgroundStateChangeListener;)V

    .line 21
    iput-object v0, p0, Lo/writeSessionOS;->zzh:Lo/writeSessionPartsToSessionFile;

    .line 22
    iget-boolean p2, p0, Lo/writeSessionOS;->zzu:Z

    if-eqz p2, :cond_0

    .line 24
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    iget-object p2, p0, Lo/cleanInvalidTempFiles;->zza:Lo/getChannelsFetchIntervalLaidback;

    .line 25
    invoke-virtual {p2}, Lo/getChannelsFetchIntervalLaidback;->onNavigationEvent()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zzi(Ljava/lang/String;Lo/getCurrentTimestampSeconds;)V

    return-void

    .line 27
    :cond_0
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    iget-object p2, p0, Lo/cleanInvalidTempFiles;->zza:Lo/getChannelsFetchIntervalLaidback;

    iget-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 28
    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Lo/getChannelsFetchIntervalLaidback;Lo/getCurrentTimestampSeconds;)V

    return-void
.end method

.method public final zzb()Lo/isFabrikEnabled;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isFabrikEnabled<",
            "Lo/finalizePreviousNativeSession;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-static {}, Lo/isFabrikEnabled;->onPostMessage()Lo/isFabrikEnabled$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x0

    .line 1010
    iput-boolean v1, v0, Lo/isFabrikEnabled$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 8
    iget-boolean v2, p0, Lo/writeSessionOS;->zzu:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lo/writeSessionOS;->zzv:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lo/setAmountRefunded;

    .line 10
    sget-object v3, Lo/getChannelAlias;->onPostMessage:Lo/setAmountRefunded;

    aput-object v3, v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 2008
    :goto_1
    iput-object v2, v0, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage:[Lo/setAmountRefunded;

    .line 11
    new-instance v1, Lo/onGetChildDrawingOrder$run$onPostMessage;

    invoke-direct {v1, p0}, Lo/onGetChildDrawingOrder$run$onPostMessage;-><init>(Lo/cleanInvalidTempFiles;)V

    .line 3006
    iput-object v1, v0, Lo/isFabrikEnabled$onMessageChannelReady;->onNavigationEvent:Lo/Transaction$$Parcelable;

    .line 13
    invoke-virtual {v0}, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage()Lo/isFabrikEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .locals 2

    .line 15
    new-instance v0, Lo/addDisappearingView$onNavigationEvent;

    iget-object v1, p0, Lo/writeSessionOS;->zzn:Lo/setCsat;

    invoke-direct {v0, v1}, Lo/addDisappearingView$onNavigationEvent;-><init>(Lo/setCsat;)V

    .line 16
    invoke-virtual {v0}, Lo/addDisappearingView$onNavigationEvent;->getOperation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x445b

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lo/writeSessionOS;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lo/writeSessionOS;->zzn:Lo/setCsat;

    invoke-virtual {v0}, Lo/setCsat;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/writeSessionOS;->zzb(Ljava/lang/Object;)V

    return-void
.end method
