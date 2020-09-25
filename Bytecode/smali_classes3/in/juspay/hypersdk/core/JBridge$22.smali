.class Lin/juspay/hypersdk/core/JBridge$22;
.super Ljava/lang/Object;

# interfaces
.implements Lo/addBackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->sendSafetyNetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$errCB:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$22;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$22;->val$errCB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$22;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$22;->val$errCB:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    iget-object v3, p1, Lcom/google/android/gms/common/api/ApiException;->extraCallback:Lcom/google/android/gms/common/api/Status;

    .line 1024
    iget v3, v3, Lcom/google/android/gms/common/api/Status;->asBinder:I

    invoke-static {v3}, Lo/getItemDelegate$asBinder;->onPostMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$22;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$22;->val$errCB:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
