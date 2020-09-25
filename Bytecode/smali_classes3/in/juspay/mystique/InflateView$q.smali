.class Lin/juspay/mystique/InflateView$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lin/juspay/mystique/InflateView;


# direct methods
.method constructor <init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    iput-object p2, p0, Lin/juspay/mystique/InflateView$q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-ne p1, v0, :cond_7

    .line 8
    iget-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lin/juspay/mystique/InflateView;->c(Lin/juspay/mystique/InflateView;F)F

    .line 9
    iget-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lin/juspay/mystique/InflateView;->d(Lin/juspay/mystique/InflateView;F)F

    .line 10
    iget-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p1}, Lin/juspay/mystique/InflateView;->d(Lin/juspay/mystique/InflateView;)F

    move-result p1

    iget-object p2, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p2}, Lin/juspay/mystique/InflateView;->b(Lin/juspay/mystique/InflateView;)F

    move-result p2

    sub-float/2addr p1, p2

    .line 11
    iget-object p2, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p2}, Lin/juspay/mystique/InflateView;->e(Lin/juspay/mystique/InflateView;)F

    move-result p2

    iget-object v1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {v1}, Lin/juspay/mystique/InflateView;->c(Lin/juspay/mystique/InflateView;)F

    move-result v1

    sub-float/2addr p2, v1

    float-to-double v1, p2

    float-to-double p1, p1

    .line 12
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const/high16 p2, 0x43b40000    # 360.0f

    add-float/2addr p1, p2

    :cond_0
    const/high16 p2, 0x42340000    # 45.0f

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_1

    const/high16 p2, 0x43070000    # 135.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_2

    :cond_1
    const/high16 p2, 0x43610000    # 225.0f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_4

    const p2, 0x439d8000    # 315.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_4

    .line 15
    :cond_2
    iget-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p1}, Lin/juspay/mystique/InflateView;->e(Lin/juspay/mystique/InflateView;)F

    move-result p1

    iget-object p2, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p2}, Lin/juspay/mystique/InflateView;->c(Lin/juspay/mystique/InflateView;)F

    move-result p2

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    const-string p1, "2"

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p1}, Lin/juspay/mystique/InflateView;->c(Lin/juspay/mystique/InflateView;)F

    move-result p1

    iget-object p2, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p2}, Lin/juspay/mystique/InflateView;->e(Lin/juspay/mystique/InflateView;)F

    move-result p2

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    const-string p1, "-2"

    goto :goto_0

    .line 21
    :cond_4
    iget-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p1}, Lin/juspay/mystique/InflateView;->d(Lin/juspay/mystique/InflateView;)F

    move-result p1

    iget-object p2, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p2}, Lin/juspay/mystique/InflateView;->b(Lin/juspay/mystique/InflateView;)F

    move-result p2

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    const-string p1, "1"

    goto :goto_0

    .line 23
    :cond_5
    iget-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p1}, Lin/juspay/mystique/InflateView;->b(Lin/juspay/mystique/InflateView;)F

    move-result p1

    iget-object p2, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p2}, Lin/juspay/mystique/InflateView;->d(Lin/juspay/mystique/InflateView;)F

    move-result p2

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    const-string p1, "-1"

    goto :goto_0

    .line 24
    :cond_6
    iget-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lin/juspay/mystique/InflateView;->a(Lin/juspay/mystique/InflateView;F)F

    .line 25
    iget-object p1, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lin/juspay/mystique/InflateView;->b(Lin/juspay/mystique/InflateView;F)F

    :cond_7
    const-string p1, "0"

    .line 52
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "window.callUICallback(\'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/mystique/InflateView$q;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lin/juspay/mystique/InflateView$q;->b:Lin/juspay/mystique/InflateView;

    invoke-static {p2}, Lin/juspay/mystique/InflateView;->a(Lin/juspay/mystique/InflateView;)Lin/juspay/mystique/DynamicUI;

    move-result-object p2

    invoke-virtual {p2, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return v0
.end method
