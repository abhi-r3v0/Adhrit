.class Lin/juspay/hypersdk/HyperFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/HyperFragment;->exitApp(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/HyperFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/HyperFragment;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment$3;->this$0:Lin/juspay/hypersdk/HyperFragment;

    iput p2, p0, Lin/juspay/hypersdk/HyperFragment$3;->val$resultCode:I

    iput-object p3, p0, Lin/juspay/hypersdk/HyperFragment$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$3;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->access$200(Lin/juspay/hypersdk/HyperFragment;)Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment$3;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v1}, Lin/juspay/hypersdk/HyperFragment;->access$100(Lin/juspay/hypersdk/HyperFragment;)I

    move-result v1

    iget v2, p0, Lin/juspay/hypersdk/HyperFragment$3;->val$resultCode:I

    iget-object v3, p0, Lin/juspay/hypersdk/HyperFragment$3;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v3}, Lin/juspay/hypersdk/core/JuspayCallback;->onResult(IILandroid/content/Intent;)V

    return-void
.end method
