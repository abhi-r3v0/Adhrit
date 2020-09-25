.class public Lo/setOnCropImageCompleteListener;
.super Lo/setShowProgressBar;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/setOnCropWindowChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/setShowProgressBar;-><init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/setOnCropWindowChangedListener;)V

    return-void
.end method


# virtual methods
.method protected extraCallback()V
    .locals 0

    return-void
.end method

.method protected final onNavigationEvent()V
    .locals 4

    iget-object v0, p0, Lo/setOnCropImageCompleteListener;->onPostMessage:Lo/setOnCtaClick;

    iget v0, v0, Lo/setOnCtaClick;->onNavigationEvent:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/setOnCropImageCompleteListener;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/SizeFilter;->extraCallback(Lo/FileUploadConfigJsonAdapter;)V

    invoke-virtual {p0}, Lo/setOnCropImageCompleteListener;->extraCallback()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setOnCropImageCompleteListener;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/setOnCropImageCompleteListener;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/setOnCropImageCompleteListener;->onPostMessage:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
