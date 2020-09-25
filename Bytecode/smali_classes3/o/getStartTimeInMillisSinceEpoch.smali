.class public final Lo/getStartTimeInMillisSinceEpoch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:I

.field private final synthetic onMessageChannelReady:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

.field private final synthetic onNavigationEvent:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;ILo/setAdSize$ICustomTabsCallback$Stub$Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getStartTimeInMillisSinceEpoch;->onMessageChannelReady:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

    iput p2, p0, Lo/getStartTimeInMillisSinceEpoch;->ICustomTabsCallback:I

    iput-object p3, p0, Lo/getStartTimeInMillisSinceEpoch;->onNavigationEvent:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/getStartTimeInMillisSinceEpoch;->onMessageChannelReady:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zza(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;)Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    move-result-object v0

    iget v1, p0, Lo/getStartTimeInMillisSinceEpoch;->ICustomTabsCallback:I

    iget-object v2, p0, Lo/getStartTimeInMillisSinceEpoch;->onNavigationEvent:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb(ILo/setAdSize$ICustomTabsCallback$Stub$Proxy;)V

    return-void
.end method
