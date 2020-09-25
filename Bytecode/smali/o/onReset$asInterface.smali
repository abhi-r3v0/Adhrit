.class public final Lo/onReset$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "banksDetail",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onReset;


# direct methods
.method public constructor <init>(Lo/onReset;)V
    .locals 0

    iput-object p1, p0, Lo/onReset$asInterface;->onPostMessage:Lo/onReset;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 71
    check-cast p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    const-string v0, "banksDetail"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lo/onReset$asInterface;->onPostMessage:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 1540
    iget-object v0, p0, Lo/onReset$asInterface;->onPostMessage:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 1540
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 1541
    iget-object v0, p0, Lo/onReset$asInterface;->onPostMessage:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 4320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    move-object v2, v0

    :cond_3
    if-nez v2, :cond_4

    .line 1541
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    check-cast v2, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iget-object p1, p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->code:Ljava/lang/String;

    iput-object p1, v2, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 1542
    iget-object p1, p0, Lo/onReset$asInterface;->onPostMessage:Lo/onReset;

    invoke-static {p1}, Lo/onReset;->ICustomTabsService(Lo/onReset;)V

    .line 71
    :cond_5
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
