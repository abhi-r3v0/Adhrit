.class public final Lo/R$drawable;
.super Lo/R$integer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/R$integer<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static onPostMessage:Lo/R$drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/R$integer;-><init>()V

    return-void
.end method

.method public static declared-synchronized ICustomTabsCallback()Lo/R$drawable;
    .locals 2

    const-class v0, Lo/R$drawable;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lo/R$drawable;->onPostMessage:Lo/R$drawable;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lo/R$drawable;

    invoke-direct {v1}, Lo/R$drawable;-><init>()V

    sput-object v1, Lo/R$drawable;->onPostMessage:Lo/R$drawable;

    .line 5
    :cond_0
    sget-object v1, Lo/R$drawable;->onPostMessage:Lo/R$drawable;
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

    const-string v0, "fpr_vc_session_sampling_rate"

    return-object v0
.end method

.method protected final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "sessions_sampling_percentage"

    return-object v0
.end method

.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.SessionSamplingRate"

    return-object v0
.end method
