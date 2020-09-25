.class public Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final zzbv:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private zzbw:Lo/getTriggerTimeoutInMillis;

.field private zzbx:Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    invoke-static {}, Lo/UdpDataSource$UdpDataSourceException;->onNavigationEvent()Lo/Cache$CacheException;

    move-result-object v0

    sget v1, Lo/ensurePlayServicesAvailable;->onNavigationEvent:I

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lo/Cache$CacheException;->ICustomTabsCallback(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbv:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/getTriggerTimeoutInMillis;

    const-wide v1, 0x3fa1111111111111L    # 0.03333333333333333

    invoke-direct {v0, v1, v2}, Lo/getTriggerTimeoutInMillis;-><init>(D)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbw:Lo/getTriggerTimeoutInMillis;

    .line 3
    new-instance v0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    invoke-direct {v0, p1}, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbx:Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;)Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbx:Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    return-object p0
.end method


# virtual methods
.method public final zza(ILo/setAdSize$ICustomTabsCallback$Stub$Proxy;)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbw:Lo/getTriggerTimeoutInMillis;

    invoke-virtual {v0}, Lo/getTriggerTimeoutInMillis;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x2

    const-string v0, "Vision"

    .line 1002
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Skipping image analysis log due to rate limiting"

    .line 1003
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 8
    :cond_1
    sget-object v0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbv:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/getStartTimeInMillisSinceEpoch;

    invoke-direct {v1, p0, p1, p2}, Lo/getStartTimeInMillisSinceEpoch;-><init>(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;ILo/setAdSize$ICustomTabsCallback$Stub$Proxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
