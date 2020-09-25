.class public final Lo/getMovementFlags;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMovementFlags$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001 B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\rJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aJ\"\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/helper/StashCtaManager;",
        "",
        "()V",
        "CTA_CHANGE_ACCOUNT",
        "",
        "CTA_OKAY",
        "CTA_RESET",
        "CTA_RETRY",
        "CTA_SUPPORT",
        "CTA_TYPE",
        "toast",
        "Lcom/dreamplug/widget/ErrorToast;",
        "getChangeAccountCta",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "getOkCta",
        "getRetryCta",
        "getSupportLink",
        "getTncLink",
        "toCtaAction",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "ctaData",
        "Lcom/dreamplug/fabrik/ui/lending/helper/StashCtaManager$CtaData;",
        "toDeeplink",
        "deeplink",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;",
        "toFlow",
        "flow",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;",
        "dataObject",
        "Lcom/dreamplug/utils/list/ListItem;",
        "CtaData",
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
.field public static final ICustomTabsCallback:Lo/getMovementFlags;

.field private static onNavigationEvent:Lo/setReenterTransition$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/getMovementFlags;

    invoke-direct {v0}, Lo/getMovementFlags;-><init>()V

    sput-object v0, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    .line 27
    new-instance v0, Lo/setReenterTransition$onPostMessage;

    invoke-direct {v0}, Lo/setReenterTransition$onPostMessage;-><init>()V

    sput-object v0, Lo/getMovementFlags;->onNavigationEvent:Lo/setReenterTransition$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Ljava/lang/String;
    .locals 11

    .line 68
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 8122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f1304ef

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "support/articles/43000566210"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f5

    const/4 v2, 0x0

    const-string/jumbo v3, "web"

    const/4 v4, 0x0

    invoke-static/range {v2 .. v10}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extraCallback()Lcom/dreamplug/fabrik/ui/lending/model/Cta;
    .locals 12

    .line 77
    new-instance v11, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    new-instance v2, Lo/getTargetScrollPosition;

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130025

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;

    const/4 v0, 0x0

    const-string v1, "change_account"

    const/4 v3, 0x2

    invoke-direct {v6, v1, v0, v3, v0}, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Data;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const-string v3, "flow"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xd9

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/dreamplug/fabrik/ui/lending/model/Cta;-><init>(Ljava/lang/String;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11
.end method

.method public static onMessageChannelReady()Lcom/dreamplug/fabrik/ui/lending/model/Cta;
    .locals 12

    .line 86
    new-instance v11, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    new-instance v2, Lo/getTargetScrollPosition;

    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 11122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f130338

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DreamApplication.context.getString(R.string.okay)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v3, "okay"

    invoke-direct {v6, v3, v1, v0, v1}, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Data;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xd9

    const/4 v10, 0x0

    const-string v3, "flow"

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/dreamplug/fabrik/ui/lending/model/Cta;-><init>(Ljava/lang/String;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11
.end method

.method public static onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;)V
    .locals 1

    const-string v0, "deeplink"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    .line 8030
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;->onMessageChannelReady:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, p0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static onNavigationEvent()Lcom/dreamplug/fabrik/ui/lending/model/Cta;
    .locals 12

    .line 82
    new-instance v11, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    new-instance v2, Lo/getTargetScrollPosition;

    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 10122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f1303c3

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DreamApplication.context.getString(R.string.retry)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v3, "retry"

    invoke-direct {v6, v3, v1, v0, v1}, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Data;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xd9

    const/4 v10, 0x0

    const-string v3, "flow"

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/dreamplug/fabrik/ui/lending/model/Cta;-><init>(Ljava/lang/String;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11
.end method

.method public static onNavigationEvent(Landroidx/fragment/app/Fragment;Lo/getMovementFlags$onMessageChannelReady;)V
    .locals 8

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctaData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object v0, p1, Lo/getMovementFlags$onMessageChannelReady;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    .line 2016
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->extraCallback:Ljava/lang/String;

    const-string v2, "deeplink"

    .line 32
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2018
    iget-object p0, v0, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;

    if-eqz p0, :cond_0

    .line 34
    invoke-static {p0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2045
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    .line 3030
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;->onMessageChannelReady:Ljava/lang/String;

    .line 2045
    invoke-virtual {p1, p0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4016
    :cond_1
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->extraCallback:Ljava/lang/String;

    const-string v2, "flow"

    .line 36
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4019
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;

    if-eqz v0, :cond_b

    .line 4089
    iget-object p1, p1, Lo/getMovementFlags$onMessageChannelReady;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    .line 5049
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "$this$lazyNavigator"

    .line 5050
    invoke-static {p0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5072
    new-instance v1, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lo/getServerTime;

    const-string p0, "initializer"

    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance p0, Lo/fromChildMerge;

    invoke-direct {p0, v1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p0, Lo/isSameListener;

    .line 6026
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 5051
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, -0x6e8c4aa9

    if-eq v3, v4, :cond_8

    const v4, 0x5c4d208

    if-eq v3, v4, :cond_5

    const v2, 0x2c0d343f

    if-eq v3, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "charges"

    .line 5060
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5061
    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    if-eqz p1, :cond_4

    check-cast p1, Lo/onDetach$INotificationSideChannel$Stub$Proxy;

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7465
    new-instance v0, Lo/onGetChildDrawingOrder$onError;

    invoke-direct {v0, p1}, Lo/onGetChildDrawingOrder$onError;-><init>(Lo/onDetach$INotificationSideChannel$Stub$Proxy;)V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p0, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 5061
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.FabrikFragmentExtraData.StashGeneralCharges"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "error"

    .line 5052
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 7026
    iget-object p0, v0, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta$Data;

    if-eqz p0, :cond_7

    .line 7035
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Data;->onPostMessage:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 5054
    sget-object v1, Lo/getMovementFlags;->onNavigationEvent:Lo/setReenterTransition$onPostMessage;

    if-nez v2, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    invoke-static/range {v1 .. v7}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    :cond_7
    return-void

    :cond_8
    const-string/jumbo v2, "stash_draft"

    .line 5057
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5058
    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    if-eqz p1, :cond_9

    check-cast p1, Lo/onDetach$IPostMessageService$Stub;

    const-string v0, "extraData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7441
    new-instance v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat;

    invoke-direct {v0, p1}, Lo/onGetChildDrawingOrder$MediaBrowserCompat;-><init>(Lo/onDetach$IPostMessageService$Stub;)V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p0, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 5058
    :cond_9
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.FabrikFragmentExtraData.LendingWithdrawalExtra"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5063
    :cond_a
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "unknown flow :"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8026
    iget-object p1, v0, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;->onPostMessage:Ljava/lang/String;

    .line 5063
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "stash flow"

    invoke-static {p1, p0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static onPostMessage()Ljava/lang/String;
    .locals 11

    .line 72
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 9122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f1304ef

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stash-terms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f5

    const/4 v2, 0x0

    const-string/jumbo v3, "web"

    const/4 v4, 0x0

    invoke-static/range {v2 .. v10}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
