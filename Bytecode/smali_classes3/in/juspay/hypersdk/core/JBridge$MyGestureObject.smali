.class Lin/juspay/hypersdk/core/JBridge$MyGestureObject;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/JBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureObject"
.end annotation


# instance fields
.field event1:Landroid/view/MotionEvent;

.field event2:Landroid/view/MotionEvent;

.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$MyGestureObject;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$MyGestureObject;->event1:Landroid/view/MotionEvent;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$MyGestureObject;->event2:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$MyGestureObject;->event1:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
