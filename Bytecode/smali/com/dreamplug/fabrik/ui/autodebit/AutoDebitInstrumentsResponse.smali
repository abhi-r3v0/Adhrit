.class public final Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0001\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u0010\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003JP\u0010#\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0010\u0008\u0003\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00052\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020(H\u00d6\u0001J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u0006\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u0004\u0010\r\"\u0004\u0008\u0011\u0010\u000fR\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006*"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
        "",
        "userId",
        "",
        "isEnabled",
        "",
        "isEligible",
        "payoutInstruments",
        "",
        "Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;",
        "templates",
        "Lcom/dreamplug/fabrik/ui/autodebit/Templates;",
        "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/fabrik/ui/autodebit/Templates;)V",
        "()Ljava/lang/Boolean;",
        "setEligible",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "setEnabled",
        "getPayoutInstruments",
        "()Ljava/util/List;",
        "setPayoutInstruments",
        "(Ljava/util/List;)V",
        "getTemplates",
        "()Lcom/dreamplug/fabrik/ui/autodebit/Templates;",
        "setTemplates",
        "(Lcom/dreamplug/fabrik/ui/autodebit/Templates;)V",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/fabrik/ui/autodebit/Templates;)Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
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
.field public ICustomTabsCallback:Ljava/lang/String;

.field public extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

.field public onMessageChannelReady:Ljava/lang/Boolean;

.field public onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/fabrik/ui/autodebit/Templates;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_enabled"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_eligible"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_instruments"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/autodebit/Templates;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onPostMessage:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/fabrik/ui/autodebit/Templates;)Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_enabled"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_eligible"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_instruments"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/autodebit/Templates;",
            ")",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;"
        }
    .end annotation

    new-instance v6, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/fabrik/ui/autodebit/Templates;)V

    return-object v6
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onPostMessage:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onPostMessage:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onPostMessage:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AutoDebitInstrumentsResponse(userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEligible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payoutInstruments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", templates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
