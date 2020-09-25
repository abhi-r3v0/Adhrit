.class public final Lo/FarmDetailsAttributesJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemInitiatedRewardDetailsResponse;


# instance fields
.field private final onMessageChannelReady:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

.field private final onNavigationEvent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FarmDetailsAttributesJsonAdapter;->onNavigationEvent:Landroid/view/View;

    iput-object p2, p0, Lo/FarmDetailsAttributesJsonAdapter;->onMessageChannelReady:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/FarmDetailsAttributesJsonAdapter;->onNavigationEvent:Landroid/view/View;

    return-object v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    iget-object v0, p0, Lo/FarmDetailsAttributesJsonAdapter;->onMessageChannelReady:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/FarmDetailsAttributesJsonAdapter;->onNavigationEvent:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage()Lo/RedeemInitiatedRewardDetailsResponse;
    .locals 0

    return-object p0
.end method
