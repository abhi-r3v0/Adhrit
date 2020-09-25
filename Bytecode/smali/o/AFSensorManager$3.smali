.class public final Lo/AFSensorManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/afDebugLog;


# instance fields
.field private extraCallback:Lo/onAttributionFailureNative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onAttributionFailureNative<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private onPostMessage:I


# direct methods
.method public constructor <init>(IILo/onAppOpenAttribution;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p3, Lo/afErrorLog;

    invoke-direct {p3}, Lo/afErrorLog;-><init>()V

    iput-object p3, p0, Lo/AFSensorManager$3;->extraCallback:Lo/onAttributionFailureNative;

    .line 29
    iput p1, p0, Lo/AFSensorManager$3;->onNavigationEvent:I

    .line 30
    iput p2, p0, Lo/AFSensorManager$3;->onMessageChannelReady:I

    return-void
.end method

.method private declared-synchronized ICustomTabsCallback(I)Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget v0, p0, Lo/AFSensorManager$3;->onPostMessage:I

    iget v1, p0, Lo/AFSensorManager$3;->onNavigationEvent:I

    if-le v0, v1, :cond_0

    .line 58
    iget v0, p0, Lo/AFSensorManager$3;->onNavigationEvent:I

    invoke-direct {p0, v0}, Lo/AFSensorManager$3;->onPostMessage(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lo/AFSensorManager$3;->extraCallback:Lo/onAttributionFailureNative;

    invoke-interface {v0, p1}, Lo/onAttributionFailureNative;->onPostMessage(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 62
    iget-object p1, p0, Lo/AFSensorManager$3;->extraCallback:Lo/onAttributionFailureNative;

    invoke-interface {p1, v0}, Lo/onAttributionFailureNative;->onNavigationEvent(Ljava/lang/Object;)I

    move-result p1

    .line 63
    iget v1, p0, Lo/AFSensorManager$3;->onPostMessage:I

    sub-int/2addr v1, p1

    iput v1, p0, Lo/AFSensorManager$3;->onPostMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 1073
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPostMessage(I)V
    .locals 2

    monitor-enter p0

    .line 43
    :goto_0
    :try_start_0
    iget v0, p0, Lo/AFSensorManager$3;->onPostMessage:I

    if-le v0, p1, :cond_0

    .line 44
    iget-object v0, p0, Lo/AFSensorManager$3;->extraCallback:Lo/onAttributionFailureNative;

    invoke-interface {v0}, Lo/onAttributionFailureNative;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lo/AFSensorManager$3;->extraCallback:Lo/onAttributionFailureNative;

    invoke-interface {v1, v0}, Lo/onAttributionFailureNative;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v0

    .line 49
    iget v1, p0, Lo/AFSensorManager$3;->onPostMessage:I

    sub-int/2addr v1, v0

    iput v1, p0, Lo/AFSensorManager$3;->onPostMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final synthetic extraCallback(I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/AFSensorManager$3;->ICustomTabsCallback(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic extraCallback(Ljava/lang/Object;)V
    .locals 2

    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1078
    iget-object v0, p0, Lo/AFSensorManager$3;->extraCallback:Lo/onAttributionFailureNative;

    invoke-interface {v0, p1}, Lo/onAttributionFailureNative;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v0

    .line 1079
    iget v1, p0, Lo/AFSensorManager$3;->onMessageChannelReady:I

    if-gt v0, v1, :cond_0

    .line 1081
    iget-object v1, p0, Lo/AFSensorManager$3;->extraCallback:Lo/onAttributionFailureNative;

    invoke-interface {v1, p1}, Lo/onAttributionFailureNative;->onPostMessage(Ljava/lang/Object;)V

    .line 1082
    monitor-enter p0

    .line 1083
    :try_start_0
    iget p1, p0, Lo/AFSensorManager$3;->onPostMessage:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/AFSensorManager$3;->onPostMessage:I

    .line 1084
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    return-void
.end method
