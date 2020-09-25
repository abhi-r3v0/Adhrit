.class public final Lo/onUserLeaveHint;
.super Lo/R$integer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/R$integer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:Lo/onUserLeaveHint;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/R$integer;-><init>()V

    return-void
.end method

.method protected static declared-synchronized ICustomTabsCallback()Lo/onUserLeaveHint;
    .locals 2

    const-class v0, Lo/onUserLeaveHint;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lo/onUserLeaveHint;->extraCallback:Lo/onUserLeaveHint;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lo/onUserLeaveHint;

    invoke-direct {v1}, Lo/onUserLeaveHint;-><init>()V

    sput-object v1, Lo/onUserLeaveHint;->extraCallback:Lo/onUserLeaveHint;

    .line 4
    :cond_0
    sget-object v1, Lo/onUserLeaveHint;->extraCallback:Lo/onUserLeaveHint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected final F_()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_disabled_android_versions"

    return-object v0
.end method

.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.SdkDisabledVersions"

    return-object v0
.end method
