.class public final Lo/Payment;
.super Landroid/opengl/GLSurfaceView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Payment$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/os/Handler;

.field private final ICustomTabsCallback$Stub:Lo/PayResponse;

.field private final asBinder:Lo/PaymentInstrumentJsonAdapter;

.field private asInterface:Landroid/view/Surface;

.field private final extraCallback:Landroid/hardware/SensorManager;

.field private final onMessageChannelReady:Landroid/hardware/Sensor;

.field private final onNavigationEvent:Lo/Payment$onPostMessage;

.field private final onPostMessage:Lo/OrderStatusView;

.field private onRelationshipValidationResult:Lo/allow$ICustomTabsCallback;

.field private onTransact:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lo/Payment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lo/Payment;->ICustomTabsCallback:Landroid/os/Handler;

    const-string/jumbo p2, "sensor"

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lo/Payment;->extraCallback:Landroid/hardware/SensorManager;

    .line 89
    sget p2, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_0

    .line 94
    iget-object p2, p0, Lo/Payment;->extraCallback:Landroid/hardware/SensorManager;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 97
    iget-object p2, p0, Lo/Payment;->extraCallback:Landroid/hardware/SensorManager;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    .line 99
    :cond_1
    iput-object p2, p0, Lo/Payment;->onMessageChannelReady:Landroid/hardware/Sensor;

    .line 101
    new-instance p2, Lo/PayResponse;

    invoke-direct {p2}, Lo/PayResponse;-><init>()V

    iput-object p2, p0, Lo/Payment;->ICustomTabsCallback$Stub:Lo/PayResponse;

    .line 102
    new-instance p2, Lo/Payment$onPostMessage;

    iget-object v0, p0, Lo/Payment;->ICustomTabsCallback$Stub:Lo/PayResponse;

    invoke-direct {p2, p0, v0}, Lo/Payment$onPostMessage;-><init>(Lo/Payment;Lo/PayResponse;)V

    iput-object p2, p0, Lo/Payment;->onNavigationEvent:Lo/Payment$onPostMessage;

    .line 104
    new-instance p2, Lo/PaymentInstrumentJsonAdapter;

    iget-object v0, p0, Lo/Payment;->onNavigationEvent:Lo/Payment$onPostMessage;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p2, p1, v0, v1}, Lo/PaymentInstrumentJsonAdapter;-><init>(Landroid/content/Context;Lo/PaymentInstrumentJsonAdapter$onPostMessage;F)V

    iput-object p2, p0, Lo/Payment;->asBinder:Lo/PaymentInstrumentJsonAdapter;

    const-string/jumbo p2, "window"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 106
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 107
    new-instance p2, Lo/OrderStatusView;

    const/4 v0, 0x2

    new-array v1, v0, [Lo/OrderStatusView$onNavigationEvent;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/Payment;->asBinder:Lo/PaymentInstrumentJsonAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lo/Payment;->onNavigationEvent:Lo/Payment$onPostMessage;

    aput-object v3, v1, v2

    invoke-direct {p2, p1, v1}, Lo/OrderStatusView;-><init>(Landroid/view/Display;[Lo/OrderStatusView$onNavigationEvent;)V

    iput-object p2, p0, Lo/Payment;->onPostMessage:Lo/OrderStatusView;

    .line 109
    invoke-virtual {p0, v0}, Lo/Payment;->setEGLContextClientVersion(I)V

    .line 110
    iget-object p1, p0, Lo/Payment;->onNavigationEvent:Lo/Payment$onPostMessage;

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 111
    iget-object p1, p0, Lo/Payment;->asBinder:Lo/PaymentInstrumentJsonAdapter;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/Payment;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lo/Payment;->onNavigationEvent(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private onNavigationEvent(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lo/Payment;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v1, Lo/PaymentCtaJsonAdapter;

    invoke-direct {v1, p0, p1}, Lo/PaymentCtaJsonAdapter;-><init>(Lo/Payment;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static onNavigationEvent(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 2

    .line 169
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 172
    iget-object v0, p0, Lo/Payment;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v1, Lo/PaymentInstrument;

    invoke-direct {v1, p0}, Lo/PaymentInstrument;-><init>(Lo/Payment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic onMessageChannelReady(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lo/Payment;->onTransact:Landroid/graphics/SurfaceTexture;

    .line 190
    iget-object v1, p0, Lo/Payment;->asInterface:Landroid/view/Surface;

    .line 191
    iput-object p1, p0, Lo/Payment;->onTransact:Landroid/graphics/SurfaceTexture;

    .line 192
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lo/Payment;->asInterface:Landroid/view/Surface;

    .line 193
    iget-object p1, p0, Lo/Payment;->onRelationshipValidationResult:Lo/allow$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p1, v2}, Lo/allow$ICustomTabsCallback;->extraCallback(Landroid/view/Surface;)V

    .line 196
    :cond_0
    invoke-static {v0, v1}, Lo/Payment;->onNavigationEvent(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 160
    iget-object v0, p0, Lo/Payment;->onMessageChannelReady:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lo/Payment;->extraCallback:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lo/Payment;->onPostMessage:Lo/OrderStatusView;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 163
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method final synthetic onPostMessage()V
    .locals 2

    .line 174
    iget-object v0, p0, Lo/Payment;->asInterface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lo/Payment;->onRelationshipValidationResult:Lo/allow$ICustomTabsCallback;

    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v1, v0}, Lo/allow$ICustomTabsCallback;->ICustomTabsCallback(Landroid/view/Surface;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lo/Payment;->onTransact:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lo/Payment;->asInterface:Landroid/view/Surface;

    invoke-static {v0, v1}, Lo/Payment;->onNavigationEvent(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lo/Payment;->onTransact:Landroid/graphics/SurfaceTexture;

    .line 180
    iput-object v0, p0, Lo/Payment;->asInterface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 151
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 152
    iget-object v0, p0, Lo/Payment;->onMessageChannelReady:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lo/Payment;->extraCallback:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lo/Payment;->onPostMessage:Lo/OrderStatusView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public final setDefaultStereoMode(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lo/Payment;->ICustomTabsCallback$Stub:Lo/PayResponse;

    invoke-virtual {v0, p1}, Lo/PayResponse;->onNavigationEvent(I)V

    return-void
.end method

.method public final setSingleTapListener(Lo/PayResponseJsonAdapter;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lo/Payment;->asBinder:Lo/PaymentInstrumentJsonAdapter;

    invoke-virtual {v0, p1}, Lo/PaymentInstrumentJsonAdapter;->ICustomTabsCallback(Lo/PayResponseJsonAdapter;)V

    return-void
.end method

.method public final setVideoComponent(Lo/allow$ICustomTabsCallback;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lo/Payment;->onRelationshipValidationResult:Lo/allow$ICustomTabsCallback;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 130
    iget-object v1, p0, Lo/Payment;->asInterface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {v0, v1}, Lo/allow$ICustomTabsCallback;->ICustomTabsCallback(Landroid/view/Surface;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lo/Payment;->onRelationshipValidationResult:Lo/allow$ICustomTabsCallback;

    iget-object v1, p0, Lo/Payment;->ICustomTabsCallback$Stub:Lo/PayResponse;

    invoke-interface {v0, v1}, Lo/allow$ICustomTabsCallback;->ICustomTabsCallback(Lo/component6;)V

    .line 134
    iget-object v0, p0, Lo/Payment;->onRelationshipValidationResult:Lo/allow$ICustomTabsCallback;

    iget-object v1, p0, Lo/Payment;->ICustomTabsCallback$Stub:Lo/PayResponse;

    invoke-interface {v0, v1}, Lo/allow$ICustomTabsCallback;->onPostMessage(Lo/getDate;)V

    .line 136
    :cond_2
    iput-object p1, p0, Lo/Payment;->onRelationshipValidationResult:Lo/allow$ICustomTabsCallback;

    if-eqz p1, :cond_3

    .line 138
    iget-object v0, p0, Lo/Payment;->ICustomTabsCallback$Stub:Lo/PayResponse;

    invoke-interface {p1, v0}, Lo/allow$ICustomTabsCallback;->onMessageChannelReady(Lo/component6;)V

    .line 139
    iget-object p1, p0, Lo/Payment;->onRelationshipValidationResult:Lo/allow$ICustomTabsCallback;

    iget-object v0, p0, Lo/Payment;->ICustomTabsCallback$Stub:Lo/PayResponse;

    invoke-interface {p1, v0}, Lo/allow$ICustomTabsCallback;->ICustomTabsCallback(Lo/getDate;)V

    .line 140
    iget-object p1, p0, Lo/Payment;->onRelationshipValidationResult:Lo/allow$ICustomTabsCallback;

    iget-object v0, p0, Lo/Payment;->asInterface:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lo/allow$ICustomTabsCallback;->extraCallback(Landroid/view/Surface;)V

    :cond_3
    return-void
.end method
