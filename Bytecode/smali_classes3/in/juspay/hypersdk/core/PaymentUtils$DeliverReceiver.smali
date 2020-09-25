.class public Lin/juspay/hypersdk/core/PaymentUtils$DeliverReceiver;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lin/juspay/hypersdk/core/JuspayDuiHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/PaymentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliverReceiver"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DeliverReceiver"


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lin/juspay/hypersdk/core/PaymentUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lin/juspay/hypersdk/core/PaymentUtils$DeliverReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SMS_DELIVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "DeliverReceiver"

    const-string v0, "Attaching the DeliverReceiver"

    invoke-static {p1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public detach(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public execute(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "SMS NOT DELIVERED"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    const-string p2, "SMS DELIVERED"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
