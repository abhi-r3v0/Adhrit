.class final Lo/OrderStatusView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OrderStatusView$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/view/Display;

.field private final asBinder:[Lo/OrderStatusView$onNavigationEvent;

.field private final extraCallback:[F

.field private final onMessageChannelReady:[F

.field private final onNavigationEvent:[F

.field private final onPostMessage:[F

.field private onRelationshipValidationResult:Z


# direct methods
.method public varargs constructor <init>(Landroid/view/Display;[Lo/OrderStatusView$onNavigationEvent;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 44
    iput-object v1, p0, Lo/OrderStatusView;->onNavigationEvent:[F

    new-array v1, v0, [F

    .line 45
    iput-object v1, p0, Lo/OrderStatusView;->extraCallback:[F

    new-array v0, v0, [F

    .line 46
    iput-object v0, p0, Lo/OrderStatusView;->onMessageChannelReady:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 47
    iput-object v0, p0, Lo/OrderStatusView;->onPostMessage:[F

    .line 53
    iput-object p1, p0, Lo/OrderStatusView;->ICustomTabsCallback:Landroid/view/Display;

    .line 54
    iput-object p2, p0, Lo/OrderStatusView;->asBinder:[Lo/OrderStatusView$onNavigationEvent;

    return-void
.end method

.method private static ICustomTabsCallback([F)V
    .locals 6

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 124
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method private ICustomTabsCallback([FI)V
    .locals 4

    if-eqz p2, :cond_3

    const/16 v0, 0x82

    const/16 v1, 0x81

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const/16 v0, 0x81

    const/16 v1, 0x82

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 119
    :goto_0
    iget-object p2, p0, Lo/OrderStatusView;->extraCallback:[F

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p1, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget-object p2, p0, Lo/OrderStatusView;->extraCallback:[F

    invoke-static {p2, v0, v1, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :cond_3
    return-void
.end method

.method private onMessageChannelReady([F)F
    .locals 3

    .line 92
    iget-object v0, p0, Lo/OrderStatusView;->extraCallback:[F

    const/4 v1, 0x1

    const/16 v2, 0x83

    invoke-static {p1, v1, v2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 94
    iget-object p1, p0, Lo/OrderStatusView;->extraCallback:[F

    iget-object v0, p0, Lo/OrderStatusView;->onPostMessage:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 95
    iget-object p1, p0, Lo/OrderStatusView;->onPostMessage:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    return p1
.end method

.method private onNavigationEvent([F)V
    .locals 9

    .line 81
    iget-boolean v0, p0, Lo/OrderStatusView;->onRelationshipValidationResult:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lo/OrderStatusView;->onMessageChannelReady:[F

    invoke-static {v0, p1}, Lo/getBonusPoints;->onNavigationEvent([F[F)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lo/OrderStatusView;->onRelationshipValidationResult:Z

    .line 85
    :cond_0
    iget-object v0, p0, Lo/OrderStatusView;->extraCallback:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    .line 86
    iget-object v5, p0, Lo/OrderStatusView;->extraCallback:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lo/OrderStatusView;->onMessageChannelReady:[F

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method private onNavigationEvent([FF)V
    .locals 4

    .line 75
    iget-object v0, p0, Lo/OrderStatusView;->asBinder:[Lo/OrderStatusView$onNavigationEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 76
    invoke-interface {v3, p1, p2}, Lo/OrderStatusView$onNavigationEvent;->onPostMessage([FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lo/OrderStatusView;->onNavigationEvent:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 61
    iget-object p1, p0, Lo/OrderStatusView;->onNavigationEvent:[F

    iget-object v0, p0, Lo/OrderStatusView;->ICustomTabsCallback:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lo/OrderStatusView;->ICustomTabsCallback([FI)V

    .line 62
    iget-object p1, p0, Lo/OrderStatusView;->onNavigationEvent:[F

    invoke-direct {p0, p1}, Lo/OrderStatusView;->onMessageChannelReady([F)F

    move-result p1

    .line 64
    iget-object v0, p0, Lo/OrderStatusView;->onNavigationEvent:[F

    invoke-static {v0}, Lo/OrderStatusView;->ICustomTabsCallback([F)V

    .line 65
    iget-object v0, p0, Lo/OrderStatusView;->onNavigationEvent:[F

    invoke-direct {p0, v0}, Lo/OrderStatusView;->onNavigationEvent([F)V

    .line 66
    iget-object v0, p0, Lo/OrderStatusView;->onNavigationEvent:[F

    invoke-direct {p0, v0, p1}, Lo/OrderStatusView;->onNavigationEvent([FF)V

    return-void
.end method
