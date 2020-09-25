.class final Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ICustomTabsCallback:Lorg/json/JSONObject;

.field final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Lo/AutoDebitAddMandateResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/AutoDebitAddMandateResponseJsonAdapter;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent:Lo/AutoDebitAddMandateResponseJsonAdapter;

    iput-object p2, p0, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;->ICustomTabsCallback:Lorg/json/JSONObject;

    iput-object p3, p0, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent:Lo/AutoDebitAddMandateResponseJsonAdapter;

    invoke-static {}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onNavigationEvent()Lo/push;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/push;->extraCallback(Lo/GameCta;)Lo/applyTo;

    move-result-object v1

    invoke-static {v0, v1}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;Lo/applyTo;)Lo/applyTo;

    iget-object v0, p0, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent:Lo/AutoDebitAddMandateResponseJsonAdapter;

    invoke-static {v0}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;)Lo/applyTo;

    move-result-object v0

    new-instance v1, Lo/AutoDebitAddMandateResponse;

    invoke-direct {v1, p0}, Lo/AutoDebitAddMandateResponse;-><init>(Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;)V

    new-instance v2, Lo/AutoDebitConfigResponseJsonAdapter;

    invoke-direct {v2, p0}, Lo/AutoDebitConfigResponseJsonAdapter;-><init>(Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;)V

    invoke-virtual {v0, v1, v2}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    return-void
.end method
