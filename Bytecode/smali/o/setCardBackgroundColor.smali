.class public final Lo/setCardBackgroundColor;
.super Lo/setPaddingRelative;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCardBackgroundColor$extraCallback;,
        Lo/setCardBackgroundColor$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000  2\u00020\u0001:\u0002 !B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0008\u0010\u001d\u001a\u00020\u001cH\u0016J\u0006\u0010\u001e\u001a\u00020\u001cJ\u0006\u0010\u001f\u001a\u00020\u001cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\n \u000b*\u0004\u0018\u00010\u001a0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/PermissionInfoDialog;",
        "Lcom/dreamplug/androidapp/ui/widget/FullScreenAlertDialog;",
        "activity",
        "Landroid/app/Activity;",
        "dismissActivityOnBack",
        "",
        "(Landroid/app/Activity;Z)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "animation",
        "Landroid/view/animation/Animation;",
        "kotlin.jvm.PlatformType",
        "getAnimation",
        "()Landroid/view/animation/Animation;",
        "neverAskAgain",
        "getNeverAskAgain",
        "()Z",
        "setNeverAskAgain",
        "(Z)V",
        "onClick",
        "Lcom/dreamplug/androidapp/ui/widget/PermissionInfoDialog$OnItemClickListener;",
        "getOnClick",
        "()Lcom/dreamplug/androidapp/ui/widget/PermissionInfoDialog$OnItemClickListener;",
        "setOnClick",
        "(Lcom/dreamplug/androidapp/ui/widget/PermissionInfoDialog$OnItemClickListener;)V",
        "view",
        "Landroid/view/View;",
        "checkAndDismissIfNotRequired",
        "",
        "onBackPressed",
        "refreshUi",
        "shakeView",
        "Companion",
        "OnItemClickListener",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub:[Ljava/lang/String;

.field public static final onNavigationEvent:Lo/setCardBackgroundColor$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Landroid/view/animation/Animation;

.field private final extraCallback:Landroid/view/View;

.field public onMessageChannelReady:Z

.field public onPostMessage:Lo/setCardBackgroundColor$extraCallback;

.field private final onRelationshipValidationResult:Z

.field private final onTransact:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/setCardBackgroundColor$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setCardBackgroundColor$onPostMessage;-><init>(B)V

    sput-object v0, Lo/setCardBackgroundColor;->onNavigationEvent:Lo/setCardBackgroundColor$onPostMessage;

    const-string v0, "android.permission.RECEIVE_SMS"

    const-string v1, "android.permission.READ_SMS"

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 20
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setCardBackgroundColor;->ICustomTabsCallback$Stub:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lo/setCardBackgroundColor;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lo/setPaddingRelative;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/setCardBackgroundColor;->onTransact:Landroid/app/Activity;

    iput-boolean p2, p0, Lo/setCardBackgroundColor;->onRelationshipValidationResult:Z

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010043

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lo/setCardBackgroundColor;->ICustomTabsCallback:Landroid/view/animation/Animation;

    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e02eb

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/setCardBackgroundColor;->extraCallback:Landroid/view/View;

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 32
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->dontBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "dontBtn"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setCardBackgroundColor$5;

    invoke-direct {p2, p0}, Lo/setCardBackgroundColor$5;-><init>(Lo/setCardBackgroundColor;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 35
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->successBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    const-string/jumbo p2, "successBtn"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setCardBackgroundColor$1;

    invoke-direct {p2, p0}, Lo/setCardBackgroundColor$1;-><init>(Lo/setCardBackgroundColor;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 40
    :try_start_0
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->pciImage:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f0803b8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PermissionInfoDialog"

    .line 42
    check-cast p1, Ljava/lang/Throwable;

    const-string/jumbo v0, "tag"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const-string v0, "pciImage.setImageResource failed"

    invoke-static {p2, v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    invoke-virtual {p0}, Lo/setCardBackgroundColor;->onNavigationEvent()V

    return-void
.end method

.method public static final synthetic onMessageChannelReady()[Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lo/setCardBackgroundColor;->ICustomTabsCallback$Stub:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 49
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->firstPermission:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lo/setCardBackgroundColor;->ICustomTabsCallback:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 50
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->mandatory:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mandatory"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 51
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->firstPermission:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "firstPermission"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 52
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->firstPermissionDesc:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v2, "firstPermissionDesc"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 53
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->firstPermissionDesc:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130385

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lo/setCardBackgroundColor;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lo/setCardBackgroundColor;->onTransact:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 67
    :cond_0
    invoke-super {p0}, Lo/setPaddingRelative;->onBackPressed()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 6

    .line 72
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "phoneGroup"

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 73
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->phoneGroup:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_0
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->phoneGroup:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "smsGroup"

    if-ne v0, v4, :cond_1

    .line 78
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.RECEIVE_SMS"

    invoke-static {v0, v5}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 79
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->smsGroup:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 81
    :cond_1
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->smsGroup:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "locationGroup"

    if-ne v0, v4, :cond_2

    .line 85
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->locationGroup:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 87
    :cond_2
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->locationGroup:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
