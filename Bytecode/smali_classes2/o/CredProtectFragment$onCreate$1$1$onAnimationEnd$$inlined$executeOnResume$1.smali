.class final synthetic Lo/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/UploadFilters;


# instance fields
.field private final onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

.field private final onPostMessage:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;


# direct methods
.method constructor <init>(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iput-object p2, p0, Lo/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 4

    iget-object v0, p0, Lo/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v1, p0, Lo/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    new-instance v2, Lo/LifestyleComponentAsset;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v3, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lo/LifestyleComponentAsset;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {v2, v0}, Lo/LifestyleComponentAsset;->extraCallback(Lo/LifestyleTemplateProperties;)V

    return-void
.end method
