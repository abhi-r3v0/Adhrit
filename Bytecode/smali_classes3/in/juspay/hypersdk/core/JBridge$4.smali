.class Lin/juspay/hypersdk/core/JBridge$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/simpl/android/fingerprint/SimplFingerprintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->getSimplFingerPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$cb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$4;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$4;->val$cb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fingerprintData(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$4;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$4;->val$cb:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
