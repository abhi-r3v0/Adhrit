.class Lin/juspay/hypersdk/HyperFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/HyperFragment;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/HyperFragment;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/HyperFragment;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment$4;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$4;->this$0:Lin/juspay/hypersdk/HyperFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lin/juspay/hypersdk/HyperFragment;->access$302(Lin/juspay/hypersdk/HyperFragment;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$4;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->access$400(Lin/juspay/hypersdk/HyperFragment;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$4;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->resetWebView()V

    return-void
.end method
