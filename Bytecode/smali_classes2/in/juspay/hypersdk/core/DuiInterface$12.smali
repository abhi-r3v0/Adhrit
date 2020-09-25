.class Lin/juspay/hypersdk/core/DuiInterface$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/DuiInterface;->requestKeyboardHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/DuiInterface;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/DuiInterface;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v1}, Lin/juspay/hypersdk/core/DuiInterface;->access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "keyboard"

    const-string v5, "hidden"

    const-string v6, "success"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "keyboard"

    const-string v5, "hidden"

    const-string v6, "failed"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "keyboard"

    const-string v5, "data"

    const-string v6, "hide"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "keyboard"

    const-string v5, "missing"

    const-string v6, "browserFragment"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$12;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "keyboard"

    const-string v6, "Hide Keyboard Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
