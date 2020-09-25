.class Lin/juspay/hypersdk/core/JBridge$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->addGestureListener(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$mDetector:Landroid/view/GestureDetector;

.field final synthetic val$myView:Landroid/view/View;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Landroid/view/View;Landroid/view/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$16;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$16;->val$myView:Landroid/view/View;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$16;->val$mDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$16;->val$myView:Landroid/view/View;

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$16$1;

    invoke-direct {v1, p0}, Lin/juspay/hypersdk/core/JBridge$16$1;-><init>(Lin/juspay/hypersdk/core/JBridge$16;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
