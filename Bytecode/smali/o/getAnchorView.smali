.class public final Lo/getAnchorView;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onNavigationEvent:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    :cond_0
    sput-wide v1, Lo/getAnchorView;->onNavigationEvent:D

    return-void
.end method

.method public static ICustomTabsCallback()J
    .locals 2

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onMessageChannelReady(J)D
    .locals 2

    .line 1022
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    .line 1025
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :goto_0
    sub-long/2addr v0, p0

    long-to-double p0, v0

    .line 35
    sget-wide v0, Lo/getAnchorView;->onNavigationEvent:D

    mul-double p0, p0, v0

    return-wide p0
.end method
