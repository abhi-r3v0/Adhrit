.class public final Lo/inflate$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003JA\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0007H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$PayRequest;",
        "",
        "payInstrument",
        "Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;",
        "cardDetails",
        "Lcom/cred/pay/repository/models/checkout/CardDetails;",
        "authType",
        "",
        "userConsentVies",
        "",
        "instrumentId",
        "(Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;Lcom/cred/pay/repository/models/checkout/CardDetails;Ljava/lang/String;ZLjava/lang/String;)V",
        "getAuthType",
        "()Ljava/lang/String;",
        "getCardDetails",
        "()Lcom/cred/pay/repository/models/checkout/CardDetails;",
        "getInstrumentId",
        "getPayInstrument",
        "()Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;",
        "getUserConsentVies",
        "()Z",
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
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

.field final onMessageChannelReady:Z

.field final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;


# direct methods
.method private constructor <init>(Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;Lcom/cred/pay/repository/models/checkout/CardDetails;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "payInstrument"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    iput-object p2, p0, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    iput-object p3, p0, Lo/inflate$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    iput-boolean p4, p0, Lo/inflate$ICustomTabsCallback;->onMessageChannelReady:Z

    iput-object p5, p0, Lo/inflate$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;Lcom/cred/pay/repository/models/checkout/CardDetails;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 8

    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move v6, p4

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v7, p5

    .line 917
    invoke-direct/range {v2 .. v7}, Lo/inflate$ICustomTabsCallback;-><init>(Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;Lcom/cred/pay/repository/models/checkout/CardDetails;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/inflate$ICustomTabsCallback;

    if-eqz v0, :cond_0

    check-cast p1, Lo/inflate$ICustomTabsCallback;

    iget-object v0, p0, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    iget-object v1, p1, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    iget-object v1, p1, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/inflate$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/inflate$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/inflate$ICustomTabsCallback;->onMessageChannelReady:Z

    iget-boolean v1, p1, Lo/inflate$ICustomTabsCallback;->onMessageChannelReady:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/inflate$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    iget-object p1, p1, Lo/inflate$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

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

    iget-object v0, p0, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/inflate$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/inflate$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/inflate$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

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

    const-string v1, "PayRequest(payInstrument="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/inflate$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/inflate$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userConsentVies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/inflate$ICustomTabsCallback;->onMessageChannelReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", instrumentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/inflate$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
