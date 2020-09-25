.class final Lo/AutoDebitAddMandateResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Supported$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Supported$$Parcelable<",
        "Lo/PlutusOrderJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onPostMessage:Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/AutoDebitAddMandateResponse;->onPostMessage:Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lo/PlutusOrderJsonAdapter;

    :try_start_0
    const-string v0, "AFMA_getAdapterLessMediationAd"

    iget-object v1, p0, Lo/AutoDebitAddMandateResponse;->onPostMessage:Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;

    iget-object v1, v1, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;->ICustomTabsCallback:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lo/PlutusOrderJsonAdapter;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error requesting an ad url"

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lo/AutoDebitAddMandateResponseJsonAdapter;->extraCallback()Lo/getTxnDate;

    move-result-object p1

    iget-object v0, p0, Lo/AutoDebitAddMandateResponse;->onPostMessage:Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/getTxnDate;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method
