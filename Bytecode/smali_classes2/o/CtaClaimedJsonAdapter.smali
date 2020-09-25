.class public final Lo/CtaClaimedJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:Z

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lorg/json/JSONObject;

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/DataListJsonAdapter;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/CtaClaimedJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    iput-object p4, p0, Lo/CtaClaimedJsonAdapter;->onNavigationEvent:Lorg/json/JSONObject;

    iput-object p1, p0, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/CtaClaimedJsonAdapter;->extraCallback:Ljava/lang/String;

    iput-boolean p5, p0, Lo/CtaClaimedJsonAdapter;->onPostMessage:Z

    iput-boolean p6, p0, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback$Stub:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    iget-boolean v0, p0, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback$Stub:Z

    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    iget-boolean v0, p0, Lo/CtaClaimedJsonAdapter;->onPostMessage:Z

    return v0
.end method

.method public final onMessageChannelReady()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lo/CtaClaimedJsonAdapter;->onNavigationEvent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CtaClaimedJsonAdapter;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CtaClaimedJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method
