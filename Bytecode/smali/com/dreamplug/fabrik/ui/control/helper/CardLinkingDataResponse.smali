.class public final Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
        "",
        "cardDetails",
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        "cardLinkingEnabled",
        "",
        "linkingData",
        "Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;",
        "(Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLcom/dreamplug/fabrik/ui/control/helper/LinkingData;)V",
        "getCardDetails",
        "()Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        "getCardLinkingEnabled",
        "()Z",
        "getLinkingData",
        "()Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field private final cardDetails:Lcom/dreamplug/fabrik/ui/control/CardDetails;

.field private final cardLinkingEnabled:Z

.field private final linkingData:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLcom/dreamplug/fabrik/ui/control/helper/LinkingData;)V
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/control/CardDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_details"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_linking_enabled"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "linking_data"
        .end annotation
    .end param

    const-string v0, "cardDetails"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    iput-boolean p2, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardLinkingEnabled:Z

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->linkingData:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLcom/dreamplug/fabrik/ui/control/helper/LinkingData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLcom/dreamplug/fabrik/ui/control/helper/LinkingData;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLcom/dreamplug/fabrik/ui/control/helper/LinkingData;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardLinkingEnabled:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->linkingData:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->copy(Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLcom/dreamplug/fabrik/ui/control/helper/LinkingData;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/dreamplug/fabrik/ui/control/CardDetails;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardLinkingEnabled:Z

    return v0
.end method

.method public final component3()Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->linkingData:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    return-object v0
.end method

.method public final copy(Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLcom/dreamplug/fabrik/ui/control/helper/LinkingData;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/control/CardDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_details"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_linking_enabled"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "linking_data"
        .end annotation
    .end param

    const-string v0, "cardDetails"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLcom/dreamplug/fabrik/ui/control/helper/LinkingData;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardLinkingEnabled:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardLinkingEnabled:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->linkingData:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->linkingData:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

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

.method public final getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    return-object v0
.end method

.method public final getCardLinkingEnabled()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardLinkingEnabled:Z

    return v0
.end method

.method public final getLinkingData()Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->linkingData:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardLinkingEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->linkingData:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardLinkingDataResponse(cardDetails="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardLinkingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->cardLinkingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linkingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->linkingData:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
