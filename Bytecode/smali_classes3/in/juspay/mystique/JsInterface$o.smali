.class Lin/juspay/mystique/JsInterface$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/JsInterface;->addStoredViewToParent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lin/juspay/mystique/JsInterface;


# direct methods
.method constructor <init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    iput-object p2, p0, Lin/juspay/mystique/JsInterface$o;->a:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/mystique/JsInterface$o;->b:Ljava/lang/String;

    iput p4, p0, Lin/juspay/mystique/JsInterface$o;->c:I

    iput-object p5, p0, Lin/juspay/mystique/JsInterface$o;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lin/juspay/mystique/JsInterface$o;->e:Z

    iput-object p7, p0, Lin/juspay/mystique/JsInterface$o;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v1}, Lin/juspay/mystique/JsInterface;->b(Lin/juspay/mystique/JsInterface;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/mystique/JsInterface$o;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v0}, Lin/juspay/mystique/JsInterface;->c(Lin/juspay/mystique/JsInterface;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/mystique/JsInterface$o;->a:Ljava/lang/String;

    new-instance v9, Lin/juspay/mystique/JsInterface$u;

    iget-object v3, p0, Lin/juspay/mystique/JsInterface$o;->b:Ljava/lang/String;

    iget-object v4, p0, Lin/juspay/mystique/JsInterface$o;->a:Ljava/lang/String;

    iget v5, p0, Lin/juspay/mystique/JsInterface$o;->c:I

    iget-object v6, p0, Lin/juspay/mystique/JsInterface$o;->d:Ljava/lang/String;

    iget-boolean v7, p0, Lin/juspay/mystique/JsInterface$o;->e:Z

    iget-object v8, p0, Lin/juspay/mystique/JsInterface$o;->f:Ljava/lang/String;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lin/juspay/mystique/JsInterface$u;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v1}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/mystique/JsInterface$o;->b:Ljava/lang/String;

    iget-object v3, p0, Lin/juspay/mystique/JsInterface$o;->a:Ljava/lang/String;

    iget v4, p0, Lin/juspay/mystique/JsInterface$o;->c:I

    iget-boolean v5, p0, Lin/juspay/mystique/JsInterface$o;->e:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lin/juspay/mystique/Renderer;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 8
    iget-object v1, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v1}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v2}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v2

    invoke-virtual {v2}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lin/juspay/mystique/JsInterface$o;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, v0}, Lin/juspay/mystique/Renderer;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lin/juspay/mystique/JsInterface$o;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v0}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.callUICallback(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/mystique/JsInterface$o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'success\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v1}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " excep: fn__addStoredViewToParent  - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v5}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v5

    invoke-virtual {v5}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v5

    invoke-virtual {v5}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ERROR"

    invoke-interface {v1, v5, v2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v1}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lin/juspay/mystique/JsInterface$o;->g:Lin/juspay/mystique/JsInterface;

    invoke-static {v0}, Lin/juspay/mystique/JsInterface;->a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
