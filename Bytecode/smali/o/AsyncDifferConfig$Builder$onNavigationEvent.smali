.class public final Lo/AsyncDifferConfig$Builder$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AsyncDifferConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003JA\u0010\u0018\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$Data;",
        "",
        "response",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
        "source",
        "",
        "instrumentId",
        "shouldShowSuccessDialog",
        "",
        "showEmailLinkingFlow",
        "(Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;Ljava/lang/String;Ljava/lang/String;ZZ)V",
        "getInstrumentId",
        "()Ljava/lang/String;",
        "getResponse",
        "()Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
        "getShouldShowSuccessDialog",
        "()Z",
        "getShowEmailLinkingFlow",
        "getSource",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Z


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    iput-object p2, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iput-boolean p4, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onPostMessage:Z

    iput-boolean p5, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;

    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    iget-object v1, p1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onPostMessage:Z

    iget-boolean v1, p1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onPostMessage:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onMessageChannelReady:Z

    iget-boolean p1, p1, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onMessageChannelReady:Z

    if-ne v0, p1, :cond_0

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

    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->extraCallback:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onPostMessage:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data(response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instrumentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowSuccessDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onPostMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showEmailLinkingFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/AsyncDifferConfig$Builder$onNavigationEvent;->onMessageChannelReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
