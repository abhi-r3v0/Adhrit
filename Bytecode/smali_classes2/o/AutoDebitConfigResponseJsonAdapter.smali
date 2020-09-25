.class final Lo/AutoDebitConfigResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SuggestedAmountJsonAdapter;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/AutoDebitConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    invoke-static {}, Lo/AutoDebitAddMandateResponseJsonAdapter;->extraCallback()Lo/getTxnDate;

    move-result-object v0

    iget-object v1, p0, Lo/AutoDebitConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;

    iget-object v1, v1, Lo/AutoDebitBankDialog$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/getTxnDate;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method
