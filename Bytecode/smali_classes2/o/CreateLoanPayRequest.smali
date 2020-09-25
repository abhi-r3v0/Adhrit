.class final Lo/CreateLoanPayRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lo/GemIntroDetails;


# instance fields
.field private ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private onPostMessage:Lo/GemIntroDetails;


# direct methods
.method public constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/GemIntroDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CreateLoanPayRequest;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/CreateLoanPayRequest;->onPostMessage:Lo/GemIntroDetails;

    return-void
.end method


# virtual methods
.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/CreateLoanPayRequest;->onPostMessage:Lo/GemIntroDetails;

    invoke-interface {v0}, Lo/GemIntroDetails;->onRelationshipValidationResult()V

    iget-object v0, p0, Lo/CreateLoanPayRequest;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->mayLaunchUrl()V

    return-void
.end method

.method public final onTransact()V
    .locals 0

    return-void
.end method

.method public final v_()V
    .locals 0

    return-void
.end method

.method public final z_()V
    .locals 1

    iget-object v0, p0, Lo/CreateLoanPayRequest;->onPostMessage:Lo/GemIntroDetails;

    invoke-interface {v0}, Lo/GemIntroDetails;->z_()V

    iget-object v0, p0, Lo/CreateLoanPayRequest;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->requestPostMessageChannel()V

    return-void
.end method
