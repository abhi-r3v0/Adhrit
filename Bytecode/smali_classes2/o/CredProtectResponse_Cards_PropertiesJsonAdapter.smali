.class public final Lo/CredProtectResponse_Cards_PropertiesJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/CreateOrderRequest;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;


# direct methods
.method public constructor <init>(Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CredProtectResponse_Cards_PropertiesJsonAdapter;->onMessageChannelReady:Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lo/CredProtectResponse_Cards_PropertiesJsonAdapter;->onMessageChannelReady:Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Could not forward getType to RewardItem"

    invoke-static {v2, v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final onNavigationEvent()I
    .locals 3

    iget-object v0, p0, Lo/CredProtectResponse_Cards_PropertiesJsonAdapter;->onMessageChannelReady:Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "Could not forward getAmount to RewardItem"

    invoke-static {v2, v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
