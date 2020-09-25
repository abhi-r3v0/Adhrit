.class public final Lo/ensureMenuView;
.super Lo/asBinder;
.source ""

# interfaces
.implements Lo/getChildVerticalGravity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ensureMenuView$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\"\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0008\u0010\u001f\u001a\u00020\u0018H\u0016J\u0012\u0010 \u001a\u00020\u00182\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0008\u0010#\u001a\u00020\u0018H\u0014J\u0010\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\u0018H\u0016J\u0008\u0010(\u001a\u00020\u0018H\u0014J-\u0010)\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u000e\u0010*\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020&0+2\u0006\u0010,\u001a\u00020-H\u0016\u00a2\u0006\u0002\u0010.J\u0008\u0010/\u001a\u00020\u0018H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/login/LoginActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/dreamplug/androidapp/service/OTPReceiveListener;",
        "()V",
        "askPermissionsAction",
        "Lcom/dreamplug/androidapp/ui/ViewModelAction$AskPermissions;",
        "disclaimerTextPresenter",
        "Lcom/dreamplug/androidapp/login/DisclaimerTextPresenter;",
        "loginViewPresenter",
        "Lcom/dreamplug/androidapp/login/LoginViewPresenter;",
        "otpSMSBroadcastReceiver",
        "Lcom/dreamplug/androidapp/service/OtpSMSBroadcastReceiver;",
        "permissionInfoDialog",
        "Lcom/dreamplug/androidapp/ui/widget/PermissionInfoDialog;",
        "updateManager",
        "Lcom/dreamplug/androidapp/InAppUpdateManager;",
        "viewModel",
        "Lcom/dreamplug/androidapp/login/LoginViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/androidapp/login/LoginViewModel;",
        "setViewModel",
        "(Lcom/dreamplug/androidapp/login/LoginViewModel;)V",
        "whatsappConsentTextPresenter",
        "initViewModel",
        "",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onOTPReceived",
        "otp",
        "",
        "onOTPTimeOut",
        "onPause",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/shouldLayout;

.field private ICustomTabsCallback$Stub:Lo/ensureMenu;

.field private asInterface:Ljava/util/HashMap;

.field private extraCallback:Lo/getContentInsetEnd;

.field public onMessageChannelReady:Lo/getContentInsetStart;

.field private onNavigationEvent:Lo/setCardBackgroundColor;

.field private onPostMessage:Lo/ensureContentInsets$extraCallback;

.field private onRelationshipValidationResult:Lo/ensureMenu;

.field private onTransact:Lo/setSwitchMinWidth;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/asBinder;-><init>()V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/ensureMenuView;)Lo/shouldLayout;
    .locals 1

    .line 35
    iget-object p0, p0, Lo/ensureMenuView;->ICustomTabsCallback:Lo/shouldLayout;

    if-nez p0, :cond_0

    const-string v0, "otpSMSBroadcastReceiver"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/ensureMenuView;Lo/ensureMenu;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/ensureMenuView;->onRelationshipValidationResult:Lo/ensureMenu;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/ensureMenuView;)Lo/ensureMenu;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/ensureMenuView;->onRelationshipValidationResult:Lo/ensureMenu;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/ensureMenuView;Lo/ensureMenu;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/ensureMenuView;->ICustomTabsCallback$Stub:Lo/ensureMenu;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;
    .locals 1

    .line 35
    iget-object p0, p0, Lo/ensureMenuView;->extraCallback:Lo/getContentInsetEnd;

    if-nez p0, :cond_0

    const-string v0, "loginViewPresenter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/ensureMenuView;Lo/ensureContentInsets$extraCallback;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/ensureMenuView;->onPostMessage:Lo/ensureContentInsets$extraCallback;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/ensureMenuView;)Lo/setCardBackgroundColor;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/ensureMenuView;->onNavigationEvent:Lo/setCardBackgroundColor;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/ensureMenuView;)Lo/ensureMenu;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/ensureMenuView;->ICustomTabsCallback$Stub:Lo/ensureMenu;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/ensureMenuView;->asInterface:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ensureMenuView;->asInterface:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/ensureMenuView;->asInterface:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/ensureMenuView;->asInterface:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 7

    const-string v0, "otp"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v1, :cond_0

    const-string/jumbo v2, "viewModel"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13726
    iget-object v2, v1, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    iget-object v3, v1, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 14320
    iget-object v3, v3, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 14321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v5

    .line 13726
    :goto_0
    check-cast v3, Lcom/dreamplug/androidapp/login/LoginUiModel;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0, p1}, Lcom/dreamplug/androidapp/login/LoginUiModel;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dreamplug/androidapp/login/LoginUiModel;

    move-result-object v5

    :cond_2
    invoke-virtual {v2, v5}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v2, v0, [Lo/addWrite;

    const/4 v3, 0x0

    .line 15043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    const-string v6, "auto fetched"

    invoke-direct {v4, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const-string v3, "pairs"

    .line 13730
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "onboard_otp_enter_first_digit"

    .line 13730
    invoke-static {v0, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 13731
    invoke-virtual {v1, p1}, Lo/getContentInsetStart;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 260
    invoke-super {p0, p1, p2, p3}, Lo/asBinder;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4ee0

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lo/ensureMenuView;->onTransact:Lo/setSwitchMinWidth;

    if-nez p1, :cond_1

    const-string/jumbo p3, "updateManager"

    invoke-static {p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Lo/setSwitchMinWidth;->onMessageChannelReady(I)V

    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 235
    iget-object v0, p0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v0, :cond_0

    const-string/jumbo v1, "viewModel"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/getContentInsetStart;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lo/ensureMenuView;->finishAfterTransition()V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    .line 47
    invoke-super/range {p0 .. p1}, Lo/asBinder;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f14012c

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f0601a9

    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Lo/hitCount;->onNavigationEvent(Landroid/app/Activity;I)V

    .line 50
    sget-object v2, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    const/4 v2, 0x0

    invoke-static {v2}, Lo/sortAndDedup;->onNavigationEvent(Landroid/view/WindowInsets;)V

    .line 51
    sget-object v3, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual/range {p0 .. p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v4

    const-string v5, "lifecycle"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "LoginActivity"

    .line 1029
    invoke-interface {v3, v7, v4, v6}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const v3, 0x7f0e0310

    .line 52
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 1220
    move-object v3, v0

    check-cast v3, Lo/onSessionEvent;

    .line 2080
    new-instance v4, Lo/setMetadata;

    invoke-direct {v4, v3}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    .line 1220
    const-class v7, Lo/getContentInsetStart;

    invoke-virtual {v4, v7}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v4

    const-string v7, "ViewModelProviders.of(th\u2026ginViewModel::class.java)"

    invoke-static {v4, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lo/getContentInsetStart;

    iput-object v4, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    const-string/jumbo v7, "viewModel"

    if-nez v4, :cond_0

    .line 1221
    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3080
    :cond_0
    new-instance v8, Lo/setMetadata;

    invoke-direct {v8, v3}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    .line 1221
    const-class v9, Lo/appendViewToAllSpans$extraCallback;

    invoke-virtual {v8, v9}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v8

    const-string v9, "ViewModelProviders.of(th\u2026BarViewModel::class.java)"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lo/appendViewToAllSpans$extraCallback;

    const-string v9, "<set-?>"

    invoke-static {v8, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4078
    iput-object v8, v4, Lo/getContentInsetStart;->onRelationshipValidationResult:Lo/appendViewToAllSpans$extraCallback;

    .line 1223
    new-instance v4, Lo/getContentInsetEnd;

    const v8, 0x7f0b070e

    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "findViewById(R.id.root_view)"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v9, :cond_1

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-direct {v4, v8, v9}, Lo/getContentInsetEnd;-><init>(Landroid/view/View;Lo/getContentInsetStart;)V

    iput-object v4, v0, Lo/ensureMenuView;->extraCallback:Lo/getContentInsetEnd;

    .line 54
    new-instance v4, Lo/setSwitchMinWidth;

    invoke-direct {v4, v3}, Lo/setSwitchMinWidth;-><init>(Lo/onSessionEvent;)V

    iput-object v4, v0, Lo/ensureMenuView;->onTransact:Lo/setSwitchMinWidth;

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v8, "force_logout"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 57
    iget-object v4, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v4, :cond_3

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4741
    :cond_3
    sget-object v8, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {}, Lo/shouldCollapse;->onMessageChannelReady()V

    .line 4742
    new-instance v8, Lo/setActive;

    invoke-direct {v8}, Lo/setActive;-><init>()V

    iput-object v8, v4, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 4743
    new-instance v8, Lo/setActive;

    invoke-direct {v8}, Lo/setActive;-><init>()V

    iput-object v8, v4, Lo/getContentInsetStart;->ICustomTabsCallback:Lo/setActive;

    .line 4744
    new-instance v8, Lo/setActive;

    invoke-direct {v8}, Lo/setActive;-><init>()V

    iput-object v8, v4, Lo/getContentInsetStart;->asInterface:Lo/setActive;

    .line 4745
    new-instance v8, Lo/setActive;

    invoke-direct {v8}, Lo/setActive;-><init>()V

    iput-object v8, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 4746
    new-instance v8, Lo/setActive;

    invoke-direct {v8}, Lo/setActive;-><init>()V

    iput-object v8, v4, Lo/getContentInsetStart;->onMessageChannelReady:Lo/setActive;

    .line 4747
    new-instance v8, Lo/setActive;

    invoke-direct {v8}, Lo/setActive;-><init>()V

    iput-object v8, v4, Lo/getContentInsetStart;->asBinder:Lo/setActive;

    .line 4748
    new-instance v8, Lo/setActive;

    invoke-direct {v8}, Lo/setActive;-><init>()V

    iput-object v8, v4, Lo/getContentInsetStart;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 4749
    iget-object v8, v4, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    new-instance v9, Lcom/dreamplug/androidapp/login/LoginUiModel;

    const/4 v10, 0x2

    const-string v11, "phone"

    invoke-direct {v9, v11, v2, v10, v2}, Lcom/dreamplug/androidapp/login/LoginUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v9}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 4752
    iget-object v4, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    new-instance v8, Lo/setContentInsetsRelative;

    const v9, 0x7f130424

    .line 4754
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x9

    const-string v11, "disable"

    .line 4752
    invoke-direct {v8, v9, v11, v2, v10}, Lo/setContentInsetsRelative;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)V

    invoke-virtual {v4, v8}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 59
    :cond_4
    new-instance v12, Lo/ensureMenu;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->consent:I

    invoke-virtual {v0, v2}, Lo/ensureMenuView;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-direct {v12, v2}, Lo/ensureMenu;-><init>(Landroid/widget/TextView;)V

    iput-object v12, v0, Lo/ensureMenuView;->ICustomTabsCallback$Stub:Lo/ensureMenu;

    if-eqz v12, :cond_5

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    .line 5152
    invoke-static/range {v12 .. v17}, Lo/ensureMenu;->onPostMessage(Lo/ensureMenu;ZZLjava/lang/CharSequence;II)V

    .line 61
    :cond_5
    new-instance v2, Lo/shouldLayout;

    invoke-direct {v2, v3}, Lo/shouldLayout;-><init>(Lo/onSessionEvent;)V

    iput-object v2, v0, Lo/ensureMenuView;->ICustomTabsCallback:Lo/shouldLayout;

    if-nez v2, :cond_6

    const-string v4, "otpSMSBroadcastReceiver"

    .line 62
    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    move-object v4, v0

    check-cast v4, Lo/getChildVerticalGravity;

    .line 6066
    iput-object v4, v2, Lo/shouldLayout;->onPostMessage:Lo/getChildVerticalGravity;

    .line 63
    iget-object v2, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v2, :cond_7

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6070
    :cond_7
    iget-object v2, v2, Lo/getContentInsetStart;->ICustomTabsCallback:Lo/setActive;

    .line 63
    move-object v4, v0

    check-cast v4, Lo/toLegacyStreamType;

    new-instance v8, Lo/ensureMenuView$onNavigationEvent;

    invoke-direct {v8, v0}, Lo/ensureMenuView$onNavigationEvent;-><init>(Lo/ensureMenuView;)V

    check-cast v8, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v4, v8}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 68
    iget-object v2, v0, Lo/ensureMenuView;->extraCallback:Lo/getContentInsetEnd;

    const-string v8, "loginViewPresenter"

    if-nez v2, :cond_8

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    new-instance v9, Lo/ensureMenuView$onTransact;

    invoke-direct {v9, v0}, Lo/ensureMenuView$onTransact;-><init>(Lo/ensureMenuView;)V

    check-cast v9, Lo/getContentPaddingLeft$extraCallback;

    const-string v10, "numberEnteredListener"

    invoke-static {v9, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6396
    iput-object v9, v2, Lo/getContentInsetEnd;->asBinder:Lo/getContentPaddingLeft$extraCallback;

    .line 74
    iget-object v2, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v2, :cond_9

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 7084
    :cond_9
    iget-object v2, v2, Lo/getContentInsetStart;->asInterface:Lo/setActive;

    .line 74
    new-instance v9, Lo/ensureMenuView$ICustomTabsCallback$Stub;

    invoke-direct {v9, v0}, Lo/ensureMenuView$ICustomTabsCallback$Stub;-><init>(Lo/ensureMenuView;)V

    check-cast v9, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v4, v9}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 87
    iget-object v2, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v2, :cond_a

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8069
    :cond_a
    iget-object v2, v2, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 87
    new-instance v9, Lo/ensureMenuView$onRelationshipValidationResult;

    invoke-direct {v9, v0}, Lo/ensureMenuView$onRelationshipValidationResult;-><init>(Lo/ensureMenuView;)V

    check-cast v9, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v4, v9}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 115
    iget-object v2, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v2, :cond_b

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8071
    :cond_b
    iget-object v2, v2, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 115
    new-instance v9, Lo/ensureMenuView$newSession;

    invoke-direct {v9, v0}, Lo/ensureMenuView$newSession;-><init>(Lo/ensureMenuView;)V

    check-cast v9, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v4, v9}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 119
    iget-object v2, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v2, :cond_c

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8072
    :cond_c
    iget-object v2, v2, Lo/getContentInsetStart;->onMessageChannelReady:Lo/setActive;

    .line 119
    new-instance v9, Lo/ensureMenuView$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v9, v0}, Lo/ensureMenuView$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/ensureMenuView;)V

    check-cast v9, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v4, v9}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 122
    new-instance v2, Lo/setCardBackgroundColor;

    invoke-direct {v2, v1}, Lo/setCardBackgroundColor;-><init>(Landroid/app/Activity;)V

    iput-object v2, v0, Lo/ensureMenuView;->onNavigationEvent:Lo/setCardBackgroundColor;

    .line 123
    iget-object v1, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v1, :cond_d

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8077
    :cond_d
    iget-object v1, v1, Lo/getContentInsetStart;->asBinder:Lo/setActive;

    .line 123
    new-instance v2, Lo/ensureMenuView$warmup;

    invoke-direct {v2, v0}, Lo/ensureMenuView$warmup;-><init>(Lo/ensureMenuView;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v4, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 141
    iget-object v1, v0, Lo/ensureMenuView;->extraCallback:Lo/getContentInsetEnd;

    if-nez v1, :cond_e

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9062
    :cond_e
    iget-object v1, v1, Lo/getContentInsetEnd;->onNavigationEvent:Landroid/view/View;

    .line 141
    new-instance v2, Lo/ensureMenuView$getInterfaceDescriptor;

    invoke-direct {v2, v0}, Lo/ensureMenuView$getInterfaceDescriptor;-><init>(Lo/ensureMenuView;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 145
    iget-object v1, v0, Lo/ensureMenuView;->extraCallback:Lo/getContentInsetEnd;

    if-nez v1, :cond_f

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9063
    :cond_f
    iget-object v1, v1, Lo/getContentInsetEnd;->onPostMessage:Landroid/view/View;

    .line 145
    new-instance v2, Lo/ensureMenuView$ICustomTabsService;

    invoke-direct {v2, v0}, Lo/ensureMenuView$ICustomTabsService;-><init>(Lo/ensureMenuView;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 149
    iget-object v1, v0, Lo/ensureMenuView;->extraCallback:Lo/getContentInsetEnd;

    if-nez v1, :cond_10

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10045
    :cond_10
    iget-object v1, v1, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    .line 149
    check-cast v1, Landroid/view/View;

    new-instance v2, Lo/ensureMenuView$onPostMessage;

    invoke-direct {v2, v0}, Lo/ensureMenuView$onPostMessage;-><init>(Lo/ensureMenuView;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 174
    iget-object v1, v0, Lo/ensureMenuView;->extraCallback:Lo/getContentInsetEnd;

    if-nez v1, :cond_11

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10055
    :cond_11
    iget-object v1, v1, Lo/getContentInsetEnd;->onMessageChannelReady:Landroid/view/View;

    .line 174
    new-instance v2, Lo/ensureMenuView$onMessageChannelReady;

    invoke-direct {v2, v0}, Lo/ensureMenuView$onMessageChannelReady;-><init>(Lo/ensureMenuView;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 177
    iget-object v1, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v1, :cond_12

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10097
    :cond_12
    iget-object v1, v1, Lo/getContentInsetStart;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 177
    new-instance v2, Lo/ensureMenuView$asInterface;

    invoke-direct {v2, v0}, Lo/ensureMenuView$asInterface;-><init>(Lo/ensureMenuView;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v4, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 11080
    new-instance v1, Lo/setMetadata;

    invoke-direct {v1, v3}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    .line 195
    const-class v2, Lo/appendViewToAllSpans$extraCallback;

    invoke-virtual {v1, v2}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v1

    check-cast v1, Lo/appendViewToAllSpans$extraCallback;

    .line 11145
    iget-object v1, v1, Lo/appendViewToAllSpans$extraCallback;->onPostMessage:Lo/setActive;

    .line 196
    new-instance v2, Lo/ensureMenuView$asBinder;

    invoke-direct {v2, v0}, Lo/ensureMenuView$asBinder;-><init>(Lo/ensureMenuView;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v4, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 204
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->messageSnackBar:I

    invoke-virtual {v0, v1}, Lo/ensureMenuView;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/appendViewToAllSpans;

    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast v2, Landroidx/lifecycle/LiveData;

    const-string/jumbo v7, "stream"

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "lifecycleOwner"

    invoke-static {v4, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12046
    new-instance v7, Lo/appendViewToAllSpans$ICustomTabsCallback$Stub;

    invoke-direct {v7, v1}, Lo/appendViewToAllSpans$ICustomTabsCallback$Stub;-><init>(Lo/appendViewToAllSpans;)V

    check-cast v7, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v4, v7}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 206
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v4

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, 0x12c

    new-instance v5, Lo/ensureMenuView$extraCallback;

    invoke-direct {v5, v1, v0}, Lo/ensureMenuView$extraCallback;-><init>(Ljava/lang/String;Lo/ensureMenuView;)V

    check-cast v5, Lo/getServerTime;

    invoke-static {v2, v4, v7, v8, v5}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 211
    :cond_13
    sget-object v1, Lo/animateThumbToCheckedState;->extraCallback:Lo/animateThumbToCheckedState;

    invoke-static {v3}, Lo/animateThumbToCheckedState;->extraCallback(Lo/onSessionEvent;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Lo/addWrite;

    .line 13043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v6

    const-string v1, "pairs"

    .line 213
    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "login_screen_load"

    .line 213
    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 250
    invoke-super {p0}, Lo/asBinder;->onDestroy()V

    .line 251
    iget-object v0, p0, Lo/ensureMenuView;->ICustomTabsCallback$Stub:Lo/ensureMenu;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 16166
    iput-object v1, v0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    .line 16167
    iput-object v1, v0, Lo/ensureMenu;->ICustomTabsCallback:Landroid/view/animation/Animation;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 255
    invoke-super {p0}, Lo/asBinder;->onPause()V

    .line 256
    iget-object v0, p0, Lo/ensureMenuView;->onTransact:Lo/setSwitchMinWidth;

    if-nez v0, :cond_0

    const-string/jumbo v1, "updateManager"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 16246
    :cond_0
    iget-object v1, v0, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    iget-object v0, v0, Lo/setSwitchMinWidth;->onRelationshipValidationResult:Lo/detect;

    invoke-interface {v1, v0}, Lo/reauthenticate;->onNavigationEvent(Lo/detect;)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-super {p0, p1, p2, p3}, Lo/asBinder;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 270
    iget-object v1, p0, Lo/ensureMenuView;->onPostMessage:Lo/ensureContentInsets$extraCallback;

    if-eqz v1, :cond_1

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    iget-object v6, p0, Lo/ensureMenuView;->onNavigationEvent:Lo/setCardBackgroundColor;

    if-nez v6, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lo/ensureContentInsets$extraCallback;->ICustomTabsCallback(Landroid/app/Activity;I[Ljava/lang/String;[ILo/setCardBackgroundColor;)V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 241
    invoke-super {p0}, Lo/asBinder;->onResume()V

    .line 242
    iget-object v0, p0, Lo/ensureMenuView;->onNavigationEvent:Lo/setCardBackgroundColor;

    if-eqz v0, :cond_0

    .line 16058
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 16059
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 243
    :cond_0
    iget-object v0, p0, Lo/ensureMenuView;->onTransact:Lo/setSwitchMinWidth;

    const-string/jumbo v1, "updateManager"

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lo/setSwitchMinWidth;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->ICustomTabsCallback$Stub()V

    .line 245
    iget-object v0, p0, Lo/ensureMenuView;->onTransact:Lo/setSwitchMinWidth;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lo/setSwitchMinWidth;->onMessageChannelReady()V

    :cond_3
    return-void
.end method
