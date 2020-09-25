.class public final Lo/ScrollingTabContainerView$VisibilityAnimListener;
.super Lo/onSessionEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cred/pay/ui/justpay/safe/CredJustPaySafeActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "()V",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "returnResult",
        "result",
        "",
        "Companion",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/onSessionEvent;-><init>()V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/ScrollingTabContainerView$VisibilityAnimListener;I)V
    .locals 0

    .line 5035
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5036
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .line 40
    sget-object v0, Lcom/cred/pay/ui/visa/JusPayWrapper;->extraCallback:Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;

    .line 4122
    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->extraCallback()Lin/juspay/services/HyperServices;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/services/HyperServices;->onBackPressed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 41
    invoke-super {p0}, Lo/onSessionEvent;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    .line 13
    invoke-super/range {p0 .. p1}, Lo/onSessionEvent;->onCreate(Landroid/os/Bundle;)V

    .line 14
    sget v1, Lo/onItemHoverEnter$onTransact;->activity_cred_just_pay_safe:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extraInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lo/setPopupClipToScreenEnabled;

    if-eqz v1, :cond_0

    .line 18
    sget-object v2, Lcom/cred/pay/ui/visa/JusPayWrapper;->extraCallback:Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;

    .line 20
    move-object v6, v0

    check-cast v6, Lo/onSessionEvent;

    new-instance v3, Lo/ScrollingTabContainerView$VisibilityAnimListener$onNavigationEvent;

    invoke-direct {v3, v0}, Lo/ScrollingTabContainerView$VisibilityAnimListener$onNavigationEvent;-><init>(Lo/ScrollingTabContainerView$VisibilityAnimListener;)V

    move-object v8, v3

    check-cast v8, Lo/onDisconnectSetValue;

    const-string v3, "credJustPaySafe"

    .line 18
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "activity"

    invoke-static {v6, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "responseCallback"

    invoke-static {v8, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "juspaySafe"

    .line 1181
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2033
    new-instance v3, Lcom/cred/pay/repository/visa/VisaPayloadWrapper;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v4, Lcom/cred/pay/repository/visa/JustPaySafePayload;

    const/4 v13, 0x0

    .line 2128
    iget-object v14, v1, Lo/setPopupClipToScreenEnabled;->onPostMessage:Ljava/lang/String;

    .line 2129
    iget-object v15, v1, Lo/setPopupClipToScreenEnabled;->onMessageChannelReady:Ljava/lang/String;

    .line 2130
    iget-object v5, v1, Lo/setPopupClipToScreenEnabled;->onNavigationEvent:Ljava/lang/String;

    .line 2131
    iget-object v7, v1, Lo/setPopupClipToScreenEnabled;->extraCallback:Ljava/util/List;

    .line 2132
    iget-boolean v1, v1, Lo/setPopupClipToScreenEnabled;->ICustomTabsCallback:Z

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v12, v4

    move-object/from16 v16, v7

    move-object/from16 v17, v5

    move/from16 v18, v1

    .line 2033
    invoke-direct/range {v12 .. v20}, Lcom/cred/pay/repository/visa/JustPaySafePayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v4

    check-cast v12, Lo/MenuPopupWindow;

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/cred/pay/repository/visa/VisaPayloadWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/MenuPopupWindow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1182
    check-cast v2, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;

    .line 4021
    iget-object v5, v3, Lcom/cred/pay/repository/visa/VisaPayloadWrapper;->extraCallback:Ljava/lang/String;

    .line 3132
    invoke-static {v3}, Lo/extraCallback;->ICustomTabsCallback(Lcom/cred/pay/repository/visa/VisaPayloadWrapper;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3133
    move-object v3, v2

    check-cast v3, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;->onMessageChannelReady(Lorg/json/JSONObject;Ljava/lang/String;Lo/onSessionEvent;Landroid/view/ViewGroup;Lo/onDisconnectSetValue;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4035
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 4036
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
