.class final Lo/getTitleMarginEnd$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTitleMarginEnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field private synthetic onPostMessage:Lo/getTitleMarginEnd;


# direct methods
.method constructor <init>(Lo/getTitleMarginEnd;)V
    .locals 0

    iput-object p1, p0, Lo/getTitleMarginEnd$asInterface;->onPostMessage:Lo/getTitleMarginEnd;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 58
    check-cast p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    const-string v0, "banksDetail"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lo/getTitleMarginEnd$asInterface;->onPostMessage:Lo/getTitleMarginEnd;

    invoke-static {v0}, Lo/getTitleMarginEnd;->asBinder(Lo/getTitleMarginEnd;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1576
    iget-object v0, p0, Lo/getTitleMarginEnd$asInterface;->onPostMessage:Lo/getTitleMarginEnd;

    invoke-static {v0}, Lo/getTitleMarginEnd;->asBinder(Lo/getTitleMarginEnd;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 1577
    iget-object v0, p0, Lo/getTitleMarginEnd$asInterface;->onPostMessage:Lo/getTitleMarginEnd;

    invoke-static {v0}, Lo/getTitleMarginEnd;->asBinder(Lo/getTitleMarginEnd;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    iget-object p1, p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->code:Ljava/lang/String;

    iput-object p1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 1578
    iget-object p1, p0, Lo/getTitleMarginEnd$asInterface;->onPostMessage:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->onRelationshipValidationResult(Lo/getTitleMarginEnd;)V

    .line 58
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
