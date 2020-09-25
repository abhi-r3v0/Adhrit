.class public final Lo/CrashlyticsBackgroundWorker$1;
.super Lo/writeSessionOS;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/writeSessionOS<",
        "Ljava/lang/Void;",
        "Lo/access$1100;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lo/gm;


# direct methods
.method public constructor <init>(Lo/logPriorityToString;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lo/writeSessionOS;-><init>(I)V

    if-eqz p1, :cond_1

    .line 1004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lo/gm;

    .line 5
    invoke-virtual {p1}, Lo/logPriorityToString;->zza()Lo/flushOrLog;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lo/gm;-><init>(Lo/flushOrLog;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/CrashlyticsBackgroundWorker$1;->zza:Lo/gm;

    return-void

    .line 1005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "finalizeMfaEnrollment"

    return-object v0
.end method

.method public final synthetic zza(Lo/finalizePreviousNativeSession;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    new-instance v0, Lo/writeNonFatalEventsTo;

    invoke-direct {v0, p0, p2}, Lo/writeNonFatalEventsTo;-><init>(Lo/writeSessionOS;Lo/removeBackgroundStateChangeListener;)V

    .line 20
    iput-object v0, p0, Lo/writeSessionOS;->zzh:Lo/writeSessionPartsToSessionFile;

    .line 21
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    iget-object p2, p0, Lo/CrashlyticsBackgroundWorker$1;->zza:Lo/gm;

    iget-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Lo/gm;Lo/getCurrentTimestampSeconds;)V

    return-void
.end method

.method public final zzb()Lo/isFabrikEnabled;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isFabrikEnabled<",
            "Lo/finalizePreviousNativeSession;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {}, Lo/isFabrikEnabled;->onPostMessage()Lo/isFabrikEnabled$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lo/setAmountRefunded;

    sget-object v2, Lo/getChannelAlias;->ICustomTabsCallback:Lo/setAmountRefunded;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1008
    iput-object v1, v0, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage:[Lo/setAmountRefunded;

    .line 1010
    iput-boolean v3, v0, Lo/isFabrikEnabled$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 10
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency$extraCallback;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency$extraCallback;-><init>(Lo/CrashlyticsBackgroundWorker$1;)V

    .line 2006
    iput-object v1, v0, Lo/isFabrikEnabled$onMessageChannelReady;->onNavigationEvent:Lo/Transaction$$Parcelable;

    .line 12
    invoke-virtual {v0}, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage()Lo/isFabrikEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .locals 3

    .line 14
    iget-object v0, p0, Lo/writeSessionOS;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lo/writeSessionOS;->zzl:Lo/getColumnName;

    invoke-static {v0, v1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/getColumnName;)Lo/CrashlyticsController$$Lambda$1;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lo/writeSessionOS;->zzf:Ljava/lang/Object;

    check-cast v1, Lo/access$1100;

    iget-object v2, p0, Lo/writeSessionOS;->zzk:Lo/getColumnConstraint;

    invoke-interface {v1, v2, v0}, Lo/access$1100;->zza(Lo/getColumnConstraint;Lo/isRooted;)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lo/writeSessionOS;->zzb(Ljava/lang/Object;)V

    return-void
.end method
