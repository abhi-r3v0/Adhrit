.class Lin/juspay/mystique/a$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/a$b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/mystique/a$a;

.field final synthetic b:Lin/juspay/mystique/a$b;


# direct methods
.method constructor <init>(Lin/juspay/mystique/a$b;Lin/juspay/mystique/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/a$b$a;->b:Lin/juspay/mystique/a$b;

    iput-object p2, p0, Lin/juspay/mystique/a$b$a;->a:Lin/juspay/mystique/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/a$b$a;->a:Lin/juspay/mystique/a$a;

    invoke-virtual {v0}, Lin/juspay/mystique/a$a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lin/juspay/mystique/a$b$a;->b:Lin/juspay/mystique/a$b;

    iget-object v0, v0, Lin/juspay/mystique/a$b;->f:Lin/juspay/mystique/a;

    invoke-static {v0}, Lin/juspay/mystique/a;->a(Lin/juspay/mystique/a;)Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.callUICallback(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/mystique/a$b$a;->a:Lin/juspay/mystique/a$a;

    invoke-virtual {v2}, Lin/juspay/mystique/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lin/juspay/mystique/a$b$a;->b:Lin/juspay/mystique/a$b;

    invoke-virtual {v2}, Lin/juspay/mystique/a$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lin/juspay/mystique/a$b$a;->a:Lin/juspay/mystique/a$a;

    invoke-virtual {p1}, Lin/juspay/mystique/a$a;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lin/juspay/mystique/a$b$a;->b:Lin/juspay/mystique/a$b;

    iget-object p1, p1, Lin/juspay/mystique/a$b;->f:Lin/juspay/mystique/a;

    invoke-static {p1}, Lin/juspay/mystique/a;->a(Lin/juspay/mystique/a;)Lin/juspay/mystique/DynamicUI;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.callUICallback(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/mystique/a$b$a;->a:Lin/juspay/mystique/a$a;

    invoke-virtual {v1}, Lin/juspay/mystique/a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lin/juspay/mystique/a$b$a;->b:Lin/juspay/mystique/a$b;

    invoke-virtual {v1}, Lin/juspay/mystique/a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
