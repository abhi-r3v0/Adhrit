.class public final Lo/supportPostponeEnterTransition$onPostMessage;
.super Lo/supportPostponeEnterTransition;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/supportPostponeEnterTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/state/FetchCardState$OnSuccess;",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/state/FetchCardState;",
        "cardsCount",
        "",
        "data",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CardsAdapterData;",
        "recommendedSubProvider",
        "Lcom/dreamplug/fabrik/ui/control/SubProvider;",
        "(ILcom/dreamplug/fabrik/ui/cm/credprotect/model/CardsAdapterData;Lcom/dreamplug/fabrik/ui/control/SubProvider;)V",
        "getCardsCount",
        "()I",
        "getData",
        "()Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CardsAdapterData;",
        "getRecommendedSubProvider",
        "()Lcom/dreamplug/fabrik/ui/control/SubProvider;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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


# instance fields
.field public final ICustomTabsCallback:Lo/hasVoiceSearch$onMessageChannelReady;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/SubProvider;


# direct methods
.method public constructor <init>(ILo/hasVoiceSearch$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/control/SubProvider;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lo/supportPostponeEnterTransition;-><init>(B)V

    iput p1, p0, Lo/supportPostponeEnterTransition$onPostMessage;->onMessageChannelReady:I

    iput-object p2, p0, Lo/supportPostponeEnterTransition$onPostMessage;->ICustomTabsCallback:Lo/hasVoiceSearch$onMessageChannelReady;

    iput-object p3, p0, Lo/supportPostponeEnterTransition$onPostMessage;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/SubProvider;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/supportPostponeEnterTransition$onPostMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lo/supportPostponeEnterTransition$onPostMessage;

    iget v0, p0, Lo/supportPostponeEnterTransition$onPostMessage;->onMessageChannelReady:I

    iget v1, p1, Lo/supportPostponeEnterTransition$onPostMessage;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/supportPostponeEnterTransition$onPostMessage;->ICustomTabsCallback:Lo/hasVoiceSearch$onMessageChannelReady;

    iget-object v1, p1, Lo/supportPostponeEnterTransition$onPostMessage;->ICustomTabsCallback:Lo/hasVoiceSearch$onMessageChannelReady;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/supportPostponeEnterTransition$onPostMessage;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/SubProvider;

    iget-object p1, p1, Lo/supportPostponeEnterTransition$onPostMessage;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/SubProvider;

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

    iget v0, p0, Lo/supportPostponeEnterTransition$onPostMessage;->onMessageChannelReady:I

    .line 1025
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/supportPostponeEnterTransition$onPostMessage;->ICustomTabsCallback:Lo/hasVoiceSearch$onMessageChannelReady;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/supportPostponeEnterTransition$onPostMessage;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/SubProvider;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnSuccess(cardsCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/supportPostponeEnterTransition$onPostMessage;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/supportPostponeEnterTransition$onPostMessage;->ICustomTabsCallback:Lo/hasVoiceSearch$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendedSubProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/supportPostponeEnterTransition$onPostMessage;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/SubProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
