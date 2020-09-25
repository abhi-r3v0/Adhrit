.class public final Lcom/cred/pay/repository/models/CardBinResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J7\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/CardBinResponse;",
        "",
        "cardDetails",
        "Lcom/cred/pay/repository/models/CardBinDetails;",
        "bankLogoUrl",
        "",
        "networkLogoUrl",
        "surchargeDetails",
        "Lcom/cred/pay/repository/models/SurchargeDetails;",
        "(Lcom/cred/pay/repository/models/CardBinDetails;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/SurchargeDetails;)V",
        "getBankLogoUrl",
        "()Ljava/lang/String;",
        "getCardDetails",
        "()Lcom/cred/pay/repository/models/CardBinDetails;",
        "getNetworkLogoUrl",
        "getSurchargeDetails",
        "()Lcom/cred/pay/repository/models/SurchargeDetails;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Lcom/cred/pay/repository/models/SurchargeDetails;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cred/pay/repository/models/CardBinDetails;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/SurchargeDetails;)V
    .locals 1
    .param p1    # Lcom/cred/pay/repository/models/CardBinDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_details"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "bank_logo_url"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "network_logo_url"
        .end annotation
    .end param
    .param p4    # Lcom/cred/pay/repository/models/SurchargeDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "surcharge_details"
        .end annotation
    .end param

    const-string v0, "cardDetails"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/repository/models/CardBinResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    iput-object p2, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onPostMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/SurchargeDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cred/pay/repository/models/CardBinDetails;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/SurchargeDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 22
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cred/pay/repository/models/CardBinResponse;-><init>(Lcom/cred/pay/repository/models/CardBinDetails;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/SurchargeDetails;)V

    return-void
.end method


# virtual methods
.method public final copy(Lcom/cred/pay/repository/models/CardBinDetails;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/SurchargeDetails;)Lcom/cred/pay/repository/models/CardBinResponse;
    .locals 1
    .param p1    # Lcom/cred/pay/repository/models/CardBinDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_details"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "bank_logo_url"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "network_logo_url"
        .end annotation
    .end param
    .param p4    # Lcom/cred/pay/repository/models/SurchargeDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "surcharge_details"
        .end annotation
    .end param

    const-string v0, "cardDetails"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cred/pay/repository/models/CardBinResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cred/pay/repository/models/CardBinResponse;-><init>(Lcom/cred/pay/repository/models/CardBinDetails;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/SurchargeDetails;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/cred/pay/repository/models/CardBinResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cred/pay/repository/models/CardBinResponse;

    iget-object v0, p0, Lcom/cred/pay/repository/models/CardBinResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    iget-object v1, p1, Lcom/cred/pay/repository/models/CardBinResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/cred/pay/repository/models/CardBinResponse;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onPostMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/cred/pay/repository/models/CardBinResponse;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/SurchargeDetails;

    iget-object p1, p1, Lcom/cred/pay/repository/models/CardBinResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/SurchargeDetails;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cred/pay/repository/models/CardBinResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/SurchargeDetails;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardBinResponse(cardDetails="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/repository/models/CardBinResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bankLogoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkLogoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", surchargeDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/CardBinResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/SurchargeDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
