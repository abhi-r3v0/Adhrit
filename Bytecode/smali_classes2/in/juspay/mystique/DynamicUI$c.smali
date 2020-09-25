.class Lin/juspay/mystique/DynamicUI$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lin/juspay/mystique/DynamicUI;


# direct methods
.method constructor <init>(Lin/juspay/mystique/DynamicUI;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    iput-object p2, p0, Lin/juspay/mystique/DynamicUI$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "addJsToWebView"

    const-string v1, ""

    .line 1
    :try_start_0
    iget-object v2, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v2}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v2}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lin/juspay/mystique/DynamicUI$c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v2}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lin/juspay/mystique/DynamicUI$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object v2, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    const-string v3, "browser null, call start first"

    invoke-static {v2, v3}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 14
    iget-object v3, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v5, v2}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v3}, Lin/juspay/mystique/DynamicUI;->b(Lin/juspay/mystique/DynamicUI;)Lin/juspay/mystique/ErrorCallback;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v1, v2}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v2

    .line 16
    iget-object v3, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OutOfMemoryError :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v5, v2}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;Ljava/lang/String;)V

    .line 17
    iget-object v3, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v3}, Lin/juspay/mystique/DynamicUI;->b(Lin/juspay/mystique/DynamicUI;)Lin/juspay/mystique/ErrorCallback;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/mystique/DynamicUI$c;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v1, v2}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
