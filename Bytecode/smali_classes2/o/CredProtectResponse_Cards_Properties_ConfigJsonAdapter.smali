.class public final Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;
.super Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private extraCallback:Lo/getAmount;


# direct methods
.method public constructor <init>(Lo/getAmount;)V
    .locals 0

    invoke-direct {p0}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;->extraCallback:Lo/getAmount;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;->extraCallback:Lo/getAmount;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getAmount;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1

    iget-object v0, p0, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;->extraCallback:Lo/getAmount;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getAmount;->asInterface()V

    :cond_0
    return-void
.end method

.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;->extraCallback:Lo/getAmount;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getAmount;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    iget-object v0, p0, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;->extraCallback:Lo/getAmount;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getAmount;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    iget-object v0, p0, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;->extraCallback:Lo/getAmount;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/getAmount;->extraCallback(I)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    iget-object v0, p0, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;->extraCallback:Lo/getAmount;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getAmount;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;->extraCallback:Lo/getAmount;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getAmount;->extraCallback()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 2

    iget-object v0, p0, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;->extraCallback:Lo/getAmount;

    if-eqz v0, :cond_0

    new-instance v1, Lo/CredProtectResponse_Cards_PropertiesJsonAdapter;

    invoke-direct {v1, p1}, Lo/CredProtectResponse_Cards_PropertiesJsonAdapter;-><init>(Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-interface {v0, v1}, Lo/getAmount;->ICustomTabsCallback(Lo/CreateOrderRequest;)V

    :cond_0
    return-void
.end method
