.class public final Lo/R$attr;
.super Lo/R$integer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/R$integer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/R$attr;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/R$integer;-><init>()V

    return-void
.end method

.method public static declared-synchronized onPostMessage()Lo/R$attr;
    .locals 2

    const-class v0, Lo/R$attr;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lo/R$attr;->ICustomTabsCallback:Lo/R$attr;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lo/R$attr;

    invoke-direct {v1}, Lo/R$attr;-><init>()V

    sput-object v1, Lo/R$attr;->ICustomTabsCallback:Lo/R$attr;

    .line 5
    :cond_0
    sget-object v1, Lo/R$attr;->ICustomTabsCallback:Lo/R$attr;
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

    const-string v0, "fpr_session_gauge_memory_capture_frequency_fg_ms"

    return-object v0
.end method

.method protected final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "sessions_memory_capture_frequency_fg_ms"

    return-object v0
.end method

.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs"

    return-object v0
.end method
