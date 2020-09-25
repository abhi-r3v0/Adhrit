.class Lin/juspay/hypersdk/core/JuspayServices$1;
.super Ljava/lang/Object;

# interfaces
.implements Lin/juspay/mystique/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JuspayServices;-><init>(Landroid/content/Context;Lin/juspay/hypersdk/data/SdkInfo;Lin/juspay/mystique/ErrorCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JuspayServices;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JuspayServices$1;->this$0:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DynamicUI"

    invoke-static {p2, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
