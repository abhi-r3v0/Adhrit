.class Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->registerApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic asBinder:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->asBinder:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    iput-object p2, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->onMessageChannelReady:Ljava/lang/String;

    iput-object p5, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p6, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->asBinder:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->onNavigationEvent:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->onMessageChannelReady:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;->extraCallback:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "registerApp"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->handleInit(Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;[Ljava/lang/String;)V

    return-void
.end method
