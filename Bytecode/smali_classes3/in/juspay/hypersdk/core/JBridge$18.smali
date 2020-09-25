.class Lin/juspay/hypersdk/core/JBridge$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->setShadow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$backgroundColors:Lorg/json/JSONArray;

.field final synthetic val$blurValues:Lorg/json/JSONArray;

.field final synthetic val$dxs:Lorg/json/JSONArray;

.field final synthetic val$dys:Lorg/json/JSONArray;

.field final synthetic val$factors:Lorg/json/JSONArray;

.field final synthetic val$level:I

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

.field final synthetic val$shadowColors:Lorg/json/JSONArray;

.field final synthetic val$spreads:Lorg/json/JSONArray;

.field final synthetic val$viewIds:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Lorg/json/JSONArray;Lorg/json/JSONArray;ILorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lin/juspay/hypersdk/core/SdkTracker;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$18;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$blurValues:Lorg/json/JSONArray;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$viewIds:Lorg/json/JSONArray;

    iput p4, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$level:I

    iput-object p5, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$backgroundColors:Lorg/json/JSONArray;

    iput-object p6, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$shadowColors:Lorg/json/JSONArray;

    iput-object p7, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$dxs:Lorg/json/JSONArray;

    iput-object p8, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$dys:Lorg/json/JSONArray;

    iput-object p9, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$spreads:Lorg/json/JSONArray;

    iput-object p10, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$factors:Lorg/json/JSONArray;

    iput-object p11, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$blurValues:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$blurValues:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$18;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v2}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$viewIds:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    aget-object v1, v3, v0

    if-eqz v1, :cond_2

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$level:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    move-object v0, v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$18;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget v2, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$level:I

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$backgroundColors:Lorg/json/JSONArray;

    iget-object v5, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$blurValues:Lorg/json/JSONArray;

    iget-object v6, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$shadowColors:Lorg/json/JSONArray;

    iget-object v7, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$dxs:Lorg/json/JSONArray;

    iget-object v8, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$dys:Lorg/json/JSONArray;

    iget-object v9, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$spreads:Lorg/json/JSONArray;

    iget-object v10, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$factors:Lorg/json/JSONArray;

    invoke-static/range {v1 .. v10}, Lin/juspay/hypersdk/core/JBridge;->access$500(Lin/juspay/hypersdk/core/JBridge;I[Landroid/view/View;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$18;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Error while setting background for shadow"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
