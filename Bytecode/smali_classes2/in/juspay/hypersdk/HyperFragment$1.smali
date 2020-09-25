.class Lin/juspay/hypersdk/HyperFragment$1;
.super Lin/juspay/hypersdk/core/JuspayServices;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/HyperFragment;->start(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/HyperFragment;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/HyperFragment;Landroid/app/Activity;Lin/juspay/hypersdk/data/SdkInfo;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment$1;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-direct {p0, p2, p3}, Lin/juspay/hypersdk/core/JuspayServices;-><init>(Landroid/app/Activity;Lin/juspay/hypersdk/data/SdkInfo;)V

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$1;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->access$000(Lin/juspay/hypersdk/HyperFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListedUrls()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment$1;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
