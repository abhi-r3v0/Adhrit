.class Lin/juspay/hypersdk/core/DuiInterface$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/DuiInterface;->requestKeyboardShow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/DuiInterface;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->val$id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v1}, Lin/juspay/hypersdk/core/DuiInterface;->access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v2}, Lin/juspay/hypersdk/core/DuiInterface;->access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v4}, Lin/juspay/hypersdk/core/DuiInterface;->access$200(Lin/juspay/hypersdk/core/DuiInterface;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v3}, Lin/juspay/hypersdk/core/DuiInterface;->access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v4}, Lin/juspay/hypersdk/core/DuiInterface;->access$200(Lin/juspay/hypersdk/core/DuiInterface;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    iget-object v4, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v4}, Lin/juspay/hypersdk/core/DuiInterface;->access$200(Lin/juspay/hypersdk/core/DuiInterface;)I

    move-result v4

    if-eq v4, v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v1}, Lin/juspay/hypersdk/core/DuiInterface;->access$200(Lin/juspay/hypersdk/core/DuiInterface;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->val$id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/DuiInterface;->access$202(Lin/juspay/hypersdk/core/DuiInterface;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$10;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "keyboard"

    const-string v6, "Show Keyboard Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
