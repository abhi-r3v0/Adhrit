.class public Lcom/google/android/gms/measurement/module/Analytics;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile onMessageChannelReady:Lcom/google/android/gms/measurement/module/Analytics;


# direct methods
.method private constructor <init>(Lo/setCheckedIcon;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/module/Analytics;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/module/Analytics;->onMessageChannelReady:Lcom/google/android/gms/measurement/module/Analytics;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/google/android/gms/measurement/module/Analytics;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/module/Analytics;->onMessageChannelReady:Lcom/google/android/gms/measurement/module/Analytics;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1, v1}, Lo/setCheckedIcon;->ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;

    move-result-object p0

    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/module/Analytics;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/module/Analytics;-><init>(Lo/setCheckedIcon;)V

    sput-object v1, Lcom/google/android/gms/measurement/module/Analytics;->onMessageChannelReady:Lcom/google/android/gms/measurement/module/Analytics;

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 9
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/module/Analytics;->onMessageChannelReady:Lcom/google/android/gms/measurement/module/Analytics;

    return-object p0
.end method
