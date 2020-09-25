.class final synthetic Lo/PaymentProcessingDialog$dismiss$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;


# instance fields
.field private final extraCallback:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

.field private final onPostMessage:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PaymentProcessingDialog$dismiss$$inlined$executeOnResume$1;->extraCallback:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iput-object p2, p0, Lo/PaymentProcessingDialog$dismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    iget-object v0, p0, Lo/PaymentProcessingDialog$dismiss$$inlined$executeOnResume$1;->extraCallback:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, p0, Lo/PaymentProcessingDialog$dismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Runnable;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {v1}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
