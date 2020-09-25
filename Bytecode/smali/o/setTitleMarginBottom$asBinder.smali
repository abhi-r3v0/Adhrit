.class final Lo/setTitleMarginBottom$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMarginBottom;->onNavigationEvent(Ljava/lang/String;)V
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
.field private synthetic extraCallback:Lo/setTitleMarginBottom;


# direct methods
.method constructor <init>(Lo/setTitleMarginBottom;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 71
    check-cast p1, Lo/getViewForPosition;

    .line 1584
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1585
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    new-instance v1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-direct {v1}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>()V

    invoke-static {v0, v1}, Lo/setTitleMarginBottom;->ICustomTabsCallback(Lo/setTitleMarginBottom;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V

    :cond_0
    if-eqz p1, :cond_11

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

    .line 1589
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast p1, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;

    .line 1590
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    iget-object v1, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    .line 3151
    iget-object v1, v1, Lo/setTitleMarginBottom;->ICustomTabsCallback:Lo/stopLoading;

    if-nez v1, :cond_4

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1590
    :cond_4
    invoke-interface {v1}, Lo/stopLoading;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    .line 1591
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getBank()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 1592
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getBank_code()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 1593
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getBrand()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    .line 1594
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->type:Ljava/lang/String;

    .line 1595
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->country:Ljava/lang/String;

    .line 1596
    iget-object p1, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {p1, v3}, Lo/setTitleMarginBottom;->ICustomTabsCallback(Lo/setTitleMarginBottom;Ljava/lang/String;)V

    .line 1597
    iget-object p1, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {p1}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    invoke-static {p1, v0}, Lo/setTitleMarginBottom;->onPostMessage(Lo/setTitleMarginBottom;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V

    return-void

    .line 1599
    :cond_a
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    iput-object v3, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 1600
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_c
    iput-object v3, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 1601
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_d
    iput-object v3, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    .line 1602
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    .line 4003
    iget-object p1, p1, Lo/getViewForPosition;->onNavigationEvent:Ljava/lang/Object;

    .line 1602
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_e
    invoke-static {v0, v3}, Lo/setTitleMarginBottom;->ICustomTabsCallback(Lo/setTitleMarginBottom;Ljava/lang/String;)V

    .line 1603
    iget-object p1, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    .line 4151
    iget-object p1, p1, Lo/setTitleMarginBottom;->ICustomTabsCallback:Lo/stopLoading;

    if-nez p1, :cond_f

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1603
    :cond_f
    iget-object v0, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->asBinder(Lo/setTitleMarginBottom;)Ljava/lang/String;

    move-result-object v0

    .line 5023
    invoke-interface {p1, v0, v1}, Lo/stopLoading;->onNavigationEvent(Ljava/lang/String;Z)V

    .line 1604
    iget-object p1, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    .line 5151
    iget-object p1, p1, Lo/setTitleMarginBottom;->ICustomTabsCallback:Lo/stopLoading;

    if-nez p1, :cond_10

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1604
    :cond_10
    invoke-interface {p1, v1}, Lo/stopLoading;->onNavigationEvent(Z)V

    .line 1605
    iget-object p1, p0, Lo/setTitleMarginBottom$asBinder;->extraCallback:Lo/setTitleMarginBottom;

    invoke-static {p1}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    invoke-static {p1, v0}, Lo/setTitleMarginBottom;->onPostMessage(Lo/setTitleMarginBottom;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V

    :cond_11
    return-void
.end method
