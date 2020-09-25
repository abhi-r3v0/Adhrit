.class Lin/juspay/hypersdk/core/JBridge$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->registerReceiver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$1;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$1;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {p1, p2}, Lin/juspay/hypersdk/core/JBridge;->access$000(Lin/juspay/hypersdk/core/JBridge;Landroid/content/Intent;)V

    return-void
.end method
