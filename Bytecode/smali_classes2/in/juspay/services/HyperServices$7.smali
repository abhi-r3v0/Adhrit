.class Lin/juspay/services/HyperServices$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/services/HyperServices;->process(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lin/juspay/services/HyperServices;


# direct methods
.method constructor <init>(Lin/juspay/services/HyperServices;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/services/HyperServices$7;->b:Lin/juspay/services/HyperServices;

    iput-object p2, p0, Lin/juspay/services/HyperServices$7;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lin/juspay/services/HyperServices$7;->b:Lin/juspay/services/HyperServices;

    iget-object v1, p0, Lin/juspay/services/HyperServices$7;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lin/juspay/services/HyperServices;->access$400(Lin/juspay/services/HyperServices;Lorg/json/JSONObject;)V

    return-void
.end method
