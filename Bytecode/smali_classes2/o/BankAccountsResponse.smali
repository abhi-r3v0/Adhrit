.class final Lo/BankAccountsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/PinAccountRequest;


# direct methods
.method constructor <init>(Lo/BankAccountDataJsonAdapter;Lo/PinAccountRequest;)V
    .locals 0

    iput-object p2, p0, Lo/BankAccountsResponse;->ICustomTabsCallback:Lo/PinAccountRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/BankAccountsResponse;->ICustomTabsCallback:Lo/PinAccountRequest;

    iget-object v0, v0, Lo/PinAccountRequest;->onMessageChannelReady:Lo/Info;

    invoke-interface {v0}, Lo/Info;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
