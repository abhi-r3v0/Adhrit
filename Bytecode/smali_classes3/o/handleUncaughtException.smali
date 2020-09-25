.class public final Lo/handleUncaughtException;
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
.field private final zza:Lo/logControlledError;


# direct methods
.method public constructor <init>(Lo/logControlledError;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lo/writeSessionOS;-><init>(I)V

    if-eqz p1, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lo/logControlledError;

    iput-object v0, p0, Lo/handleUncaughtException;->zza:Lo/logControlledError;

    .line 3
    invoke-virtual {p1}, Lo/logControlledError;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 2007
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lo/logControlledError;->zzc()Ljava/lang/String;

    move-result-object p1

    .line 3007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3008
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "password cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2008
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "email cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1011
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "credential cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "linkEmailAuthCredential"

    return-object v0
.end method

.method public final synthetic zza(Lo/finalizePreviousNativeSession;Lo/removeBackgroundStateChangeListener;)V
    .locals 3
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

    iget-object p2, p0, Lo/handleUncaughtException;->zza:Lo/logControlledError;

    .line 25
    invoke-virtual {p2}, Lo/logControlledError;->zzb()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lo/handleUncaughtException;->zza:Lo/logControlledError;

    .line 26
    invoke-virtual {v0}, Lo/logControlledError;->zzc()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/writeSessionOS;->zze:Lo/isRooted;

    .line 27
    invoke-virtual {v1}, Lo/isRooted;->zze()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 28
    invoke-interface {p1, p2, v0, v1, v2}, Lo/doWriteNonFatal;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getCurrentTimestampSeconds;)V

    return-void

    .line 30
    :cond_0
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    new-instance p2, Lo/registerOnSharedPreferenceChangeListener;

    iget-object v0, p0, Lo/handleUncaughtException;->zza:Lo/logControlledError;

    .line 31
    invoke-virtual {v0}, Lo/logControlledError;->zzb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/handleUncaughtException;->zza:Lo/logControlledError;

    .line 32
    invoke-virtual {v1}, Lo/logControlledError;->zzc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/writeSessionOS;->zze:Lo/isRooted;

    .line 33
    invoke-virtual {v2}, Lo/isRooted;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lo/registerOnSharedPreferenceChangeListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 34
    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Lo/registerOnSharedPreferenceChangeListener;Lo/getCurrentTimestampSeconds;)V

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

    .line 3010
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

    .line 4008
    :goto_1
    iput-object v2, v0, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage:[Lo/setAmountRefunded;

    .line 12
    new-instance v1, Lo/offsetChildrenVertical$onPostMessage;

    invoke-direct {v1, p0}, Lo/offsetChildrenVertical$onPostMessage;-><init>(Lo/handleUncaughtException;)V

    .line 5006
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
    iget-object v1, p0, Lo/writeSessionOS;->zzf:Ljava/lang/Object;

    check-cast v1, Lo/access$1100;

    iget-object v2, p0, Lo/writeSessionOS;->zzk:Lo/getColumnConstraint;

    invoke-interface {v1, v2, v0}, Lo/access$1100;->zza(Lo/getColumnConstraint;Lo/isRooted;)V

    .line 18
    new-instance v1, Lo/access$2100;

    invoke-direct {v1, v0}, Lo/access$2100;-><init>(Lo/CrashlyticsController$$Lambda$1;)V

    invoke-virtual {p0, v1}, Lo/writeSessionOS;->zzb(Ljava/lang/Object;)V

    return-void
.end method
