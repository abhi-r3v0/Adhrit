.class public final Lo/listSessionBeginFiles;
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
.field private final zza:Lo/setChannelType;


# direct methods
.method public constructor <init>(Lo/writeTo;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 10

    move-object v0, p0

    const/16 v1, 0x8

    .line 1
    invoke-direct {p0, v1}, Lo/writeSessionOS;-><init>(I)V

    if-eqz p1, :cond_1

    .line 1004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lo/setChannelType;

    .line 5
    invoke-virtual {p1}, Lo/writeTo;->zza()Ljava/lang/String;

    move-result-object v3

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lo/setChannelType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V

    iput-object v1, v0, Lo/listSessionBeginFiles;->zza:Lo/setChannelType;

    return-void

    .line 1005
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given String is empty or null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1002
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null reference"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "startMfaEnrollmentWithPhoneNumber"

    return-object v0
.end method

.method public final synthetic zza(Lo/finalizePreviousNativeSession;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    new-instance v0, Lo/writeNonFatalEventsTo;

    invoke-direct {v0, p0, p2}, Lo/writeNonFatalEventsTo;-><init>(Lo/writeSessionOS;Lo/removeBackgroundStateChangeListener;)V

    .line 16
    iput-object v0, p0, Lo/writeSessionOS;->zzh:Lo/writeSessionPartsToSessionFile;

    .line 17
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    iget-object p2, p0, Lo/listSessionBeginFiles;->zza:Lo/setChannelType;

    iget-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Lo/setChannelType;Lo/getCurrentTimestampSeconds;)V

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
    new-instance v1, Lo/onGetChildDrawingOrder$onReceiveResult$extraCallback;

    invoke-direct {v1, p0}, Lo/onGetChildDrawingOrder$onReceiveResult$extraCallback;-><init>(Lo/listSessionBeginFiles;)V

    .line 2006
    iput-object v1, v0, Lo/isFabrikEnabled$onMessageChannelReady;->onNavigationEvent:Lo/Transaction$$Parcelable;

    .line 12
    invoke-virtual {v0}, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage()Lo/isFabrikEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
