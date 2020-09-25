.class Lin/juspay/services/HyperServices$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/services/HyperServices;->initiate(Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

.field final synthetic c:Lin/juspay/services/HyperServices;


# direct methods
.method constructor <init>(Lin/juspay/services/HyperServices;Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/services/HyperServices$3;->c:Lin/juspay/services/HyperServices;

    iput-object p2, p0, Lin/juspay/services/HyperServices$3;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lin/juspay/services/HyperServices$3;->b:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lin/juspay/services/HyperServices$3;->c:Lin/juspay/services/HyperServices;

    iget-object v1, p0, Lin/juspay/services/HyperServices$3;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lin/juspay/services/HyperServices$3;->b:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-static {v0, v1, v2}, Lin/juspay/services/HyperServices;->access$000(Lin/juspay/services/HyperServices;Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V

    return-void
.end method
