.class final Lin/juspay/services/HyperServices$9;
.super Lin/juspay/hypersdk/core/JuspayServices;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/services/HyperServices;->createJuspayService(Landroid/content/Context;)Lin/juspay/hypersdk/core/JuspayServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lin/juspay/hypersdk/data/SdkInfo;Lin/juspay/mystique/ErrorCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lin/juspay/hypersdk/core/JuspayServices;-><init>(Landroid/content/Context;Lin/juspay/hypersdk/data/SdkInfo;Lin/juspay/mystique/ErrorCallback;Z)V

    return-void
.end method


# virtual methods
.method public final getContainer()Landroid/widget/FrameLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWhiteListedUrls()[Ljava/lang/String;
    .locals 1

    const-string v0, "file:///android_asset/base.html"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
