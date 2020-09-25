.class Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->initialiseNPCICL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

.field private synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$1;->onMessageChannelReady:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    iput-object p2, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$1;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lorg/npci/upi/security/services/CLServices;)V
    .locals 2

    .line 54
    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onMessageChannelReady(Lorg/npci/upi/security/services/CLServices;)Lorg/npci/upi/security/services/CLServices;

    .line 55
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$1;->onMessageChannelReady:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.callUICallback(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$1;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void
.end method
