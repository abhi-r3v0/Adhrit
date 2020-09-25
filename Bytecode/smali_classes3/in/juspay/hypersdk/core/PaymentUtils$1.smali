.class final Lin/juspay/hypersdk/core/PaymentUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lin/juspay/hypersdk/core/ClipboardListener$OnClipboardChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/PaymentUtils;->getClipboardListener(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)Lin/juspay/hypersdk/core/ClipboardListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$browserFragment:Lin/juspay/hypersdk/HyperFragment;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/PaymentUtils$1;->val$browserFragment:Lin/juspay/hypersdk/HyperFragment;

    iput-object p2, p0, Lin/juspay/hypersdk/core/PaymentUtils$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClipboardChange(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/PaymentUtils$1;->val$browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/PaymentUtils$1;->val$browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    iget-object v1, p0, Lin/juspay/hypersdk/core/PaymentUtils$1;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
