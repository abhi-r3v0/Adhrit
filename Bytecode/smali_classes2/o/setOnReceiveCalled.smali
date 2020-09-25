.class public final Lo/setOnReceiveCalled;
.super Lcom/google/ads/mediation/MediationServerParameters;


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/MediationServerParameters$onNavigationEvent;
        extraCallback = "label"
        onMessageChannelReady = true
    .end annotation
.end field

.field public onMessageChannelReady:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/MediationServerParameters$onNavigationEvent;
        extraCallback = "class_name"
        onMessageChannelReady = true
    .end annotation
.end field

.field public onNavigationEvent:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/MediationServerParameters$onNavigationEvent;
        extraCallback = "parameter"
        onMessageChannelReady = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/mediation/MediationServerParameters;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/setOnReceiveCalled;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method
