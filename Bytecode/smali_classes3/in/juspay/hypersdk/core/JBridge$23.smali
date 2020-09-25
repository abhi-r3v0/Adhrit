.class Lin/juspay/hypersdk/core/JBridge$23;
.super Ljava/lang/Object;

# interfaces
.implements Lo/addLifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->sendSafetyNetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/addLifecycleEventListener<",
        "Lo/setEndIconTintMode$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$succCB:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$23;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$23;->val$succCB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo/setEndIconTintMode$onMessageChannelReady;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/JBridge$23;->onSuccess(Lo/setEndIconTintMode$onMessageChannelReady;)V

    return-void
.end method

.method public onSuccess(Lo/setEndIconTintMode$onMessageChannelReady;)V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$23;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$23;->val$succCB:Ljava/lang/String;

    invoke-virtual {p1}, Lo/setEndIconTintMode$onMessageChannelReady;->onPostMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
