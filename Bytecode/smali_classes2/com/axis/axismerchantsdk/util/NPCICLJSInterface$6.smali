.class Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->getCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic ICustomTabsCallback$Stub:Ljava/lang/String;

.field private synthetic ICustomTabsService:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

.field private synthetic asBinder:Ljava/lang/String;

.field private synthetic asInterface:Ljava/lang/String;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Lorg/npci/upi/security/services/CLRemoteResultReceiver;

.field private synthetic onPostMessage:Ljava/lang/String;

.field private synthetic onRelationshipValidationResult:Ljava/lang/String;

.field private synthetic onTransact:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->ICustomTabsService:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    iput-object p2, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onNavigationEvent:Lorg/npci/upi/security/services/CLRemoteResultReceiver;

    iput-object p4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onMessageChannelReady:Ljava/lang/String;

    iput-object p5, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onPostMessage:Ljava/lang/String;

    iput-object p6, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->extraCallback:Ljava/lang/String;

    iput-object p7, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->asBinder:Ljava/lang/String;

    iput-object p8, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object p9, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onTransact:Ljava/lang/String;

    iput-object p10, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object p11, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->asInterface:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 197
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->ICustomTabsService:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onNavigationEvent:Lorg/npci/upi/security/services/CLRemoteResultReceiver;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onMessageChannelReady:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onPostMessage:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->extraCallback:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->asBinder:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onTransact:Ljava/lang/String;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->onRelationshipValidationResult:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;->asInterface:Ljava/lang/String;

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string v4, "getCredential"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->handleInit(Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;[Ljava/lang/String;)V

    return-void
.end method
