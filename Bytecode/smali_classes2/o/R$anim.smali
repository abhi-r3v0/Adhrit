.class public final Lo/R$anim;
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
.field private static ICustomTabsCallback:Lo/R$anim;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/R$integer;-><init>()V

    return-void
.end method

.method public static declared-synchronized ICustomTabsCallback()Lo/R$anim;
    .locals 2

    const-class v0, Lo/R$anim;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lo/R$anim;->ICustomTabsCallback:Lo/R$anim;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lo/R$anim;

    invoke-direct {v1}, Lo/R$anim;-><init>()V

    sput-object v1, Lo/R$anim;->ICustomTabsCallback:Lo/R$anim;

    .line 5
    :cond_0
    sget-object v1, Lo/R$anim;->ICustomTabsCallback:Lo/R$anim;
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

    const-string v0, "fpr_rl_time_limit_sec"

    return-object v0
.end method

.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.TimeLimitSec"

    return-object v0
.end method
