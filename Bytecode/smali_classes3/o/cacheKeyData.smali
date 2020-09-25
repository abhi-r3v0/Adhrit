.class public final Lo/cacheKeyData;
.super Lo/writeSessionOS;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/writeSessionOS<",
        "Lo/isLoggingEnabled;",
        "Lo/access$1100;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lo/getCategory;


# direct methods
.method public constructor <init>(Lo/flushOrLog;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lo/writeSessionOS;-><init>(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lo/flushOrLog;->zza(Z)Lo/flushOrLog;

    move-result-object p1

    .line 4
    new-instance v0, Lo/getCategory;

    invoke-direct {v0, p1, p2}, Lo/getCategory;-><init>(Lo/flushOrLog;Ljava/lang/String;)V

    iput-object v0, p0, Lo/cacheKeyData;->zza:Lo/getCategory;

    return-void

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "credential cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "reauthenticateWithPhoneCredentialWithData"

    return-object v0
.end method

.method public final synthetic zza(Lo/finalizePreviousNativeSession;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    new-instance v0, Lo/writeNonFatalEventsTo;

    invoke-direct {v0, p0, p2}, Lo/writeNonFatalEventsTo;-><init>(Lo/writeSessionOS;Lo/removeBackgroundStateChangeListener;)V

    .line 23
    iput-object v0, p0, Lo/writeSessionOS;->zzh:Lo/writeSessionPartsToSessionFile;

    .line 24
    iget-boolean p2, p0, Lo/writeSessionOS;->zzu:Z

    if-eqz p2, :cond_0

    .line 26
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    iget-object p2, p0, Lo/cacheKeyData;->zza:Lo/getCategory;

    .line 27
    invoke-virtual {p2}, Lo/getCategory;->onPostMessage()Lo/flushOrLog;

    move-result-object p2

    iget-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 28
    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Lo/flushOrLog;Lo/getCurrentTimestampSeconds;)V

    return-void

    .line 30
    :cond_0
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    iget-object p2, p0, Lo/cacheKeyData;->zza:Lo/getCategory;

    iget-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 31
    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Lo/getCategory;Lo/getCurrentTimestampSeconds;)V

    return-void
.end method

.method public final zzb()Lo/isFabrikEnabled;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isFabrikEnabled<",
            "Lo/finalizePreviousNativeSession;",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lo/isFabrikEnabled;->onPostMessage()Lo/isFabrikEnabled$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x0

    .line 2010
    iput-boolean v1, v0, Lo/isFabrikEnabled$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 9
    iget-boolean v2, p0, Lo/writeSessionOS;->zzu:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lo/writeSessionOS;->zzv:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lo/setAmountRefunded;

    .line 11
    sget-object v3, Lo/getChannelAlias;->onPostMessage:Lo/setAmountRefunded;

    aput-object v3, v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 3008
    :goto_1
    iput-object v2, v0, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage:[Lo/setAmountRefunded;

    .line 12
    new-instance v1, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$extraCallback;

    invoke-direct {v1, p0}, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$extraCallback;-><init>(Lo/cacheKeyData;)V

    .line 4006
    iput-object v1, v0, Lo/isFabrikEnabled$onMessageChannelReady;->onNavigationEvent:Lo/Transaction$$Parcelable;

    .line 14
    invoke-virtual {v0}, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage()Lo/isFabrikEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .locals 3

    .line 16
    iget-object v0, p0, Lo/writeSessionOS;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lo/writeSessionOS;->zzl:Lo/getColumnName;

    invoke-static {v0, v1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/getColumnName;)Lo/CrashlyticsController$$Lambda$1;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lo/writeSessionOS;->zze:Lo/isRooted;

    invoke-virtual {v1}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lo/writeSessionOS;->zzf:Ljava/lang/Object;

    check-cast v1, Lo/access$1100;

    iget-object v2, p0, Lo/writeSessionOS;->zzk:Lo/getColumnConstraint;

    invoke-interface {v1, v2, v0}, Lo/access$1100;->zza(Lo/getColumnConstraint;Lo/isRooted;)V

    .line 19
    new-instance v1, Lo/access$2100;

    invoke-direct {v1, v0}, Lo/access$2100;-><init>(Lo/CrashlyticsController$$Lambda$1;)V

    invoke-virtual {p0, v1}, Lo/writeSessionOS;->zzb(Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4280

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lo/writeSessionOS;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
