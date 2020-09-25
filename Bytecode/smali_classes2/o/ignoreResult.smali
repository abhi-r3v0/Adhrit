.class public final Lo/ignoreResult;
.super Lo/writeSessionOS;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/writeSessionOS<",
        "Lo/isClsTrace;",
        "Lo/access$1100;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lo/gt;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lo/writeSessionOS;-><init>(I)V

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lo/gt;

    invoke-direct {v0, p1}, Lo/gt;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ignoreResult;->zza:Lo/gt;

    return-void

    .line 1008
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "refresh token cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "getAccessToken"

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

    iget-object p2, p0, Lo/ignoreResult;->zza:Lo/gt;

    .line 25
    invoke-virtual {p2}, Lo/gt;->onNavigationEvent()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 26
    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Ljava/lang/String;Lo/getCurrentTimestampSeconds;)V

    return-void

    .line 28
    :cond_0
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    iget-object p2, p0, Lo/ignoreResult;->zza:Lo/gt;

    iget-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 29
    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Lo/gt;Lo/getCurrentTimestampSeconds;)V

    return-void
.end method

.method public final zzb()Lo/isFabrikEnabled;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isFabrikEnabled<",
            "Lo/finalizePreviousNativeSession;",
            "Lo/isClsTrace;",
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
    new-instance v1, Lo/findViewHolderForPosition$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/findViewHolderForPosition$onMessageChannelReady;-><init>(Lo/ignoreResult;)V

    .line 3006
    iput-object v1, v0, Lo/isFabrikEnabled$onMessageChannelReady;->onNavigationEvent:Lo/Transaction$$Parcelable;

    .line 13
    invoke-virtual {v0}, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage()Lo/isFabrikEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .locals 3

    .line 15
    iget-object v0, p0, Lo/writeSessionOS;->zzk:Lo/getColumnConstraint;

    invoke-virtual {v0}, Lo/getColumnConstraint;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lo/writeSessionOS;->zzk:Lo/getColumnConstraint;

    iget-object v1, p0, Lo/ignoreResult;->zza:Lo/gt;

    invoke-virtual {v1}, Lo/gt;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getColumnConstraint;->extraCallback(Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lo/writeSessionOS;->zzf:Ljava/lang/Object;

    check-cast v0, Lo/access$1100;

    iget-object v1, p0, Lo/writeSessionOS;->zzk:Lo/getColumnConstraint;

    iget-object v2, p0, Lo/writeSessionOS;->zze:Lo/isRooted;

    invoke-interface {v0, v1, v2}, Lo/access$1100;->zza(Lo/getColumnConstraint;Lo/isRooted;)V

    .line 18
    iget-object v0, p0, Lo/writeSessionOS;->zzk:Lo/getColumnConstraint;

    invoke-virtual {v0}, Lo/getColumnConstraint;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->zza(Ljava/lang/String;)Lo/isClsTrace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/writeSessionOS;->zzb(Ljava/lang/Object;)V

    return-void
.end method
