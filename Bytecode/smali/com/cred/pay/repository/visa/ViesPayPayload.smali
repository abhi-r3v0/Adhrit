.class public final Lcom/cred/pay/repository/visa/ViesPayPayload;
.super Lo/MenuPopupWindow;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0003\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0003\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0003\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001c\u001a\u00020\nH\u00c6\u0003JM\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0003\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0003\u0010\t\u001a\u00020\n2\u0008\u0008\u0003\u0010\u000b\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\n2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lcom/cred/pay/repository/visa/ViesPayPayload;",
        "Lcom/cred/pay/repository/visa/VisaDataPayloadClass;",
        "action",
        "",
        "card",
        "Lcom/cred/pay/repository/visa/EligibilityPayload$Card;",
        "endUrls",
        "",
        "amount",
        "drawFromStatusBar",
        "",
        "drawFromNavBar",
        "(Ljava/lang/String;Lcom/cred/pay/repository/visa/EligibilityPayload$Card;Ljava/util/List;Ljava/lang/String;ZZ)V",
        "getAction",
        "()Ljava/lang/String;",
        "getAmount",
        "getCard",
        "()Lcom/cred/pay/repository/visa/EligibilityPayload$Card;",
        "getDrawFromNavBar",
        "()Z",
        "getDrawFromStatusBar",
        "getEndUrls",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "",
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
.field final ICustomTabsCallback:Lcom/cred/pay/repository/visa/EligibilityPayload$Card;

.field final asBinder:Z

.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Z

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cred/pay/repository/visa/EligibilityPayload$Card;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "end_urls_regexes"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "drawFromStatusBar"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "drawFromNavBar"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/visa/EligibilityPayload$Card;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endUrls"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Lo/MenuPopupWindow;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->ICustomTabsCallback:Lcom/cred/pay/repository/visa/EligibilityPayload$Card;

    iput-object p3, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onMessageChannelReady:Ljava/util/List;

    iput-object p4, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onPostMessage:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onNavigationEvent:Z

    iput-boolean p6, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->asBinder:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cred/pay/repository/visa/EligibilityPayload$Card;Ljava/util/List;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-string p1, "VIES_PAY"

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_1

    const-string p1, "dreamplug.in/payments"

    .line 1019
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const-string p1, "java.util.Collections.singletonList(element)"

    invoke-static {p3, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x10

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move v5, p5

    :goto_0
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, p6

    :goto_1
    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    .line 106
    invoke-direct/range {v0 .. v6}, Lcom/cred/pay/repository/visa/ViesPayPayload;-><init>(Ljava/lang/String;Lcom/cred/pay/repository/visa/EligibilityPayload$Card;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/cred/pay/repository/visa/EligibilityPayload$Card;Ljava/util/List;Ljava/lang/String;ZZ)Lcom/cred/pay/repository/visa/ViesPayPayload;
    .locals 8
    .param p3    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "end_urls_regexes"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "drawFromStatusBar"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "drawFromNavBar"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/visa/EligibilityPayload$Card;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/cred/pay/repository/visa/ViesPayPayload;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endUrls"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cred/pay/repository/visa/ViesPayPayload;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/cred/pay/repository/visa/ViesPayPayload;-><init>(Ljava/lang/String;Lcom/cred/pay/repository/visa/EligibilityPayload$Card;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/cred/pay/repository/visa/ViesPayPayload;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cred/pay/repository/visa/ViesPayPayload;

    iget-object v0, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/cred/pay/repository/visa/ViesPayPayload;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->ICustomTabsCallback:Lcom/cred/pay/repository/visa/EligibilityPayload$Card;

    iget-object v1, p1, Lcom/cred/pay/repository/visa/ViesPayPayload;->ICustomTabsCallback:Lcom/cred/pay/repository/visa/EligibilityPayload$Card;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onMessageChannelReady:Ljava/util/List;

    iget-object v1, p1, Lcom/cred/pay/repository/visa/ViesPayPayload;->onMessageChannelReady:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onPostMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/cred/pay/repository/visa/ViesPayPayload;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onNavigationEvent:Z

    iget-boolean v1, p1, Lcom/cred/pay/repository/visa/ViesPayPayload;->onNavigationEvent:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->asBinder:Z

    iget-boolean p1, p1, Lcom/cred/pay/repository/visa/ViesPayPayload;->asBinder:Z

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

    iget-object v0, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->ICustomTabsCallback:Lcom/cred/pay/repository/visa/EligibilityPayload$Card;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onMessageChannelReady:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onNavigationEvent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->asBinder:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViesPayPayload(action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->ICustomTabsCallback:Lcom/cred/pay/repository/visa/EligibilityPayload$Card;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onMessageChannelReady:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", drawFromStatusBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->onNavigationEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", drawFromNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cred/pay/repository/visa/ViesPayPayload;->asBinder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
