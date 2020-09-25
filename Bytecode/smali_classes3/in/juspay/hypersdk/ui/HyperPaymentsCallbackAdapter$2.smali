.class final Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$2;
.super Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;->createJuspayDelegate(Lin/juspay/hypersdk/core/JuspayCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lin/juspay/hypersdk/core/JuspayCallback;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JuspayCallback;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$2;->val$callback:Lin/juspay/hypersdk/core/JuspayCallback;

    invoke-direct {p0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lorg/json/JSONObject;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V
    .locals 0

    return-void
.end method

.method public final onResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$2;->val$callback:Lin/juspay/hypersdk/core/JuspayCallback;

    invoke-interface {v0, p1, p2, p3}, Lin/juspay/hypersdk/core/JuspayCallback;->onResult(IILandroid/content/Intent;)V

    return-void
.end method
