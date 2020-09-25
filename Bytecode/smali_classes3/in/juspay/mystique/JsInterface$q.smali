.class Lin/juspay/mystique/JsInterface$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/JsInterface;->moveView(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lin/juspay/mystique/JsInterface;


# direct methods
.method constructor <init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/JsInterface$q;->c:Lin/juspay/mystique/JsInterface;

    iput-object p2, p0, Lin/juspay/mystique/JsInterface$q;->a:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/mystique/JsInterface$q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lin/juspay/mystique/JsInterface$q;->c:Lin/juspay/mystique/JsInterface;

    invoke-static {v0}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/mystique/JsInterface$q;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    iget-object v2, p0, Lin/juspay/mystique/JsInterface$q;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6
    :catch_0
    iget-object v0, p0, Lin/juspay/mystique/JsInterface$q;->c:Lin/juspay/mystique/JsInterface;

    invoke-static {v0}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " fn__moveView - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/mystique/JsInterface$q;->c:Lin/juspay/mystique/JsInterface;

    invoke-static {v2}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v2

    invoke-virtual {v2}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v2

    invoke-virtual {v2}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERROR"

    invoke-interface {v0, v2, v1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
