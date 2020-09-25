.class final Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox;->extraCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getViewForPosition<",
        "+",
        "Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;",
        "+",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005 \u0006*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/dreamplug/network/helper/Response;",
        "Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getTransformedBoundingBox;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox;)V
    .locals 0

    iput-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 58
    check-cast p1, Lo/getViewForPosition;

    .line 1593
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->onRelationshipValidationResult(Lo/getTransformedBoundingBox;)V

    .line 1594
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1595
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    new-instance v1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-direct {v1}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>()V

    invoke-static {v0, v1}, Lo/getTransformedBoundingBox;->onPostMessage(Lo/getTransformedBoundingBox;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V

    :cond_0
    if-eqz p1, :cond_12

    .line 2010
    iget-object v0, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "addCardView"

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    .line 3003
    iget-object p1, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 1599
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast p1, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;

    .line 1600
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    iget-object v1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    .line 3183
    iget-object v1, v1, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    if-nez v1, :cond_4

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1600
    :cond_4
    invoke-interface {v1}, Lo/stopLoading;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    .line 1601
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getBank()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 1602
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getBank_code()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 1603
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getBrand()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    .line 1604
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->type:Ljava/lang/String;

    .line 1605
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->country:Ljava/lang/String;

    .line 1606
    iget-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {p1, v3}, Lo/getTransformedBoundingBox;->onNavigationEvent(Lo/getTransformedBoundingBox;Ljava/lang/String;)V

    .line 1607
    iget-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {p1}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    invoke-static {p1, v0}, Lo/getTransformedBoundingBox;->ICustomTabsCallback(Lo/getTransformedBoundingBox;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V

    return-void

    .line 1609
    :cond_a
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    iput-object v3, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 1610
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_c
    iput-object v3, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 1611
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_d
    iput-object v3, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    .line 1612
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    .line 4003
    iget-object p1, p1, Lo/getViewForPosition;->onNavigationEvent:Ljava/lang/Object;

    .line 1612
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_e
    invoke-static {v0, v3}, Lo/getTransformedBoundingBox;->onNavigationEvent(Lo/getTransformedBoundingBox;Ljava/lang/String;)V

    .line 1613
    iget-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {p1}, Lo/getTransformedBoundingBox;->onTransact(Lo/getTransformedBoundingBox;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1614
    iget-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    .line 4183
    iget-object p1, p1, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    if-nez p1, :cond_f

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1614
    :cond_f
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->onTransact(Lo/getTransformedBoundingBox;)Ljava/lang/String;

    move-result-object v0

    .line 5023
    invoke-interface {p1, v0, v1}, Lo/stopLoading;->onNavigationEvent(Ljava/lang/String;Z)V

    .line 1616
    :cond_10
    iget-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    .line 5183
    iget-object p1, p1, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    if-nez p1, :cond_11

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1616
    :cond_11
    invoke-interface {p1, v1}, Lo/stopLoading;->onNavigationEvent(Z)V

    .line 1617
    iget-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    invoke-static {p1}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    invoke-static {p1, v0}, Lo/getTransformedBoundingBox;->ICustomTabsCallback(Lo/getTransformedBoundingBox;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V

    :cond_12
    return-void
.end method
