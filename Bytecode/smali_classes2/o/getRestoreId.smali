.class public final Lo/getRestoreId;
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
.field private static final ICustomTabsCallback:Lo/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/bs<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static onNavigationEvent:Lo/getRestoreId;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide/16 v0, 0x1cd

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v0, 0x1ce

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v0, 0x2a3

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v0, 0x2a4

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v3, "FIREPERF_AUTOPUSH"

    const-string v5, "FIREPERF"

    const-string v7, "FIREPERF_INTERNAL_LOW"

    const-string v9, "FIREPERF_INTERNAL_HIGH"

    .line 16
    invoke-static/range {v2 .. v9}, Lo/bs;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lo/bs;

    move-result-object v0

    sput-object v0, Lo/getRestoreId;->ICustomTabsCallback:Lo/bs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/R$integer;-><init>()V

    return-void
.end method

.method protected static ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lo/onPostMessage$extraCallback;->zzdb:Ljava/lang/String;

    return-object v0
.end method

.method protected static extraCallback(J)Z
    .locals 1

    .line 7
    sget-object v0, Lo/getRestoreId;->ICustomTabsCallback:Lo/bs;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/bs;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static onNavigationEvent(J)Ljava/lang/String;
    .locals 1

    .line 6
    sget-object v0, Lo/getRestoreId;->ICustomTabsCallback:Lo/bs;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/bs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized onPostMessage()Lo/getRestoreId;
    .locals 2

    const-class v0, Lo/getRestoreId;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lo/getRestoreId;->onNavigationEvent:Lo/getRestoreId;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lo/getRestoreId;

    invoke-direct {v1}, Lo/getRestoreId;-><init>()V

    sput-object v1, Lo/getRestoreId;->onNavigationEvent:Lo/getRestoreId;

    .line 5
    :cond_0
    sget-object v1, Lo/getRestoreId;->onNavigationEvent:Lo/getRestoreId;
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

    const-string v0, "fpr_log_source"

    return-object v0
.end method

.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.LogSourceName"

    return-object v0
.end method
