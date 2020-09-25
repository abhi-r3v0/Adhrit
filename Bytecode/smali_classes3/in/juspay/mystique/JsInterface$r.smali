.class Lin/juspay/mystique/JsInterface$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/JsInterface;->removeView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lin/juspay/mystique/JsInterface;


# direct methods
.method constructor <init>(Lin/juspay/mystique/JsInterface;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/JsInterface$r;->b:Lin/juspay/mystique/JsInterface;

    iput p2, p0, Lin/juspay/mystique/JsInterface$r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface$r;->b:Lin/juspay/mystique/JsInterface;

    invoke-static {v0}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lin/juspay/mystique/JsInterface$r;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
