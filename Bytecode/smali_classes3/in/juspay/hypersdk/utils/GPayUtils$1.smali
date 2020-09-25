.class final Lin/juspay/hypersdk/utils/GPayUtils$1;
.super Lin/juspay/hypersdk/core/JuspayServices;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/utils/GPayUtils;->isGPayReadyToPay(Landroid/app/Activity;Landroid/os/Handler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Lin/juspay/hypersdk/data/SdkInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lin/juspay/hypersdk/core/JuspayServices;-><init>(Landroid/app/Activity;Lin/juspay/hypersdk/data/SdkInfo;)V

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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
