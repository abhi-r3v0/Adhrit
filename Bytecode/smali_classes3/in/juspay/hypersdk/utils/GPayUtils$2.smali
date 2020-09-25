.class final Lin/juspay/hypersdk/utils/GPayUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/utils/GPayUtils;->isReady(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/os/Handler$Callback;

.field final synthetic val$inAppSupported:Z

.field final synthetic val$msg:Landroid/os/Message;

.field final synthetic val$payload:Landroid/os/Bundle;

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

.field final synthetic val$upiIntentSupported:Z


# direct methods
.method constructor <init>(Landroid/os/Bundle;ZZLin/juspay/hypersdk/core/SdkTracker;Landroid/os/Message;Landroid/os/Handler$Callback;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$payload:Landroid/os/Bundle;

    iput-boolean p2, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$inAppSupported:Z

    iput-boolean p3, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$upiIntentSupported:Z

    iput-object p4, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    iput-object p5, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$msg:Landroid/os/Message;

    iput-object p6, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$callback:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$payload:Landroid/os/Bundle;

    const-string v1, "error"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$payload:Landroid/os/Bundle;

    const-string v1, "can_open"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$payload:Landroid/os/Bundle;

    const-string v1, "in_app_supported"

    iget-boolean v2, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$inAppSupported:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$payload:Landroid/os/Bundle;

    const-string v1, "in_app_sdk"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$payload:Landroid/os/Bundle;

    const-string v0, "upi_intent"

    iget-boolean v1, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$upiIntentSupported:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v3, "external_sdk"

    const-string v4, "info"

    const-string v5, "gpay_utils"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "isready"

    iget-object v11, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$payload:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lin/juspay/hypersdk/core/SdkTracker;->trackApiCalls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$msg:Landroid/os/Message;

    iget-object v0, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$payload:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$callback:Landroid/os/Handler$Callback;

    iget-object v0, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$msg:Landroid/os/Message;

    invoke-interface {p1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "GPayUtils"

    const-string v1, "error while extracting the result: "

    invoke-static {v0, v1, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lin/juspay/hypersdk/utils/GPayUtils$2;->val$callback:Landroid/os/Handler$Callback;

    invoke-static {v0, p1, v1}, Lin/juspay/hypersdk/utils/GPayUtils;->access$000(Lin/juspay/hypersdk/core/SdkTracker;Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method
