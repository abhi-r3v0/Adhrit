.class final Lo/AddVerifyCardSuccessDialog$setupUI$1$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/SupportedJsonAdapter;


# direct methods
.method constructor <init>(Lo/SupportedJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/AddVerifyCardSuccessDialog$setupUI$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SupportedJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/AddVerifyCardSuccessDialog$setupUI$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SupportedJsonAdapter;

    invoke-static {v0}, Lo/SupportedJsonAdapter;->onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AddVerifyCardSuccessDialog$setupUI$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SupportedJsonAdapter;

    invoke-static {v0}, Lo/SupportedJsonAdapter;->onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;

    move-result-object v0

    invoke-interface {v0}, Lo/BankOfferDetailsResponse;->extraCallback()V

    iget-object v0, p0, Lo/AddVerifyCardSuccessDialog$setupUI$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SupportedJsonAdapter;

    invoke-static {v0}, Lo/SupportedJsonAdapter;->onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;

    move-result-object v0

    invoke-interface {v0}, Lo/BankOfferDetailsResponse;->asBinder()V

    :cond_0
    return-void
.end method