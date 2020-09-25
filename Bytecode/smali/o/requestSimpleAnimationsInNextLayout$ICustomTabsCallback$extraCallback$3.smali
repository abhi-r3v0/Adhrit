.class final Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/performAccessibilityActionForItem;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/sms/BankSmsUiState;",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "com/dreamplug/fabrik/ui/sms/BankSmsFragmentUiHelperKt$setupSheet$4$1$1",
        "com/dreamplug/fabrik/ui/sms/BankSmsFragmentUiHelperKt$$special$$inlined$postDelayed$1$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;


# direct methods
.method constructor <init>(Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback$3;->onMessageChannelReady:Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p1

    check-cast v0, Lo/performAccessibilityActionForItem;

    move-object/from16 v1, p0

    .line 2138
    iget-object v2, v1, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback$3;->onMessageChannelReady:Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;

    iget-object v2, v2, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;->ICustomTabsCallback:Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;

    iget-object v2, v2, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    const-string v3, "it"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "bankSmsUiState"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3079
    instance-of v3, v0, Lo/performAccessibilityActionForItem$onMessageChannelReady;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 3080
    check-cast v0, Lo/performAccessibilityActionForItem$onMessageChannelReady;

    .line 4006
    iget-object v6, v0, Lo/performAccessibilityActionForItem$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 3080
    sget-object v5, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    invoke-static/range {v5 .. v11}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 3081
    :cond_0
    iput-boolean v4, v2, Lo/getSelectionModeForAccessibility;->extraCallback:Z

    .line 3082
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void

    .line 3084
    :cond_2
    instance-of v3, v0, Lo/performAccessibilityActionForItem$onTransact;

    const-string/jumbo v5, "send_sms_success_toast_load"

    if-eqz v3, :cond_4

    .line 5004
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    invoke-interface {v2, v5, v3}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 3086
    sget-object v6, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast v0, Lo/performAccessibilityActionForItem$onTransact;

    .line 5005
    iget-object v7, v0, Lo/performAccessibilityActionForItem$onTransact;->onNavigationEvent:Ljava/lang/String;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const v11, 0x7f0601f9

    const/16 v12, 0xe

    .line 3086
    invoke-static/range {v6 .. v12}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 3087
    iput-boolean v4, v2, Lo/getSelectionModeForAccessibility;->extraCallback:Z

    .line 3088
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_3
    return-void

    .line 3090
    :cond_4
    instance-of v3, v0, Lo/performAccessibilityActionForItem$onPostMessage;

    const-wide/16 v6, 0x320

    const-string v8, "failureGroup"

    const-string/jumbo v9, "simSelectionGroup"

    const-string v10, "consentGroup"

    const-string v11, "loaderGroup"

    const-string v12, "descriptionText"

    const/4 v13, 0x0

    const/16 v14, 0x8

    if-eqz v3, :cond_5

    .line 6004
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    const-string/jumbo v4, "send_sms_confirmation_screen_load"

    invoke-interface {v2, v4, v3}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 3092
    check-cast v0, Lo/performAccessibilityActionForItem$onPostMessage;

    .line 6007
    iget-object v0, v0, Lo/performAccessibilityActionForItem$onPostMessage;->onPostMessage:Ljava/lang/CharSequence;

    const-string v3, "$this$showConsentSheet"

    .line 3092
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "description"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6028
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->descriptionText:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/createFullSpanItemFromEnd;

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6029
    new-instance v0, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v0}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 6030
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 6031
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->loaderGroup:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 6528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v14, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 6032
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentGroup:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 7528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v13, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 6033
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->simSelectionGroup:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 8528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v14, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 6034
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->failureGroup:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 9528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v14, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 6035
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3}, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent(Landroid/view/ViewGroup;)V

    .line 6036
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 6037
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->descriptionText:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 6161
    new-instance v3, Lo/requestSimpleAnimationsInNextLayout$onPostMessage;

    invoke-direct {v3, v2}, Lo/requestSimpleAnimationsInNextLayout$onPostMessage;-><init>(Lo/getSelectionModeForAccessibility;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 6162
    invoke-virtual {v0, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3094
    :cond_5
    instance-of v3, v0, Lo/performAccessibilityActionForItem$ICustomTabsCallback$Stub;

    if-eqz v3, :cond_6

    .line 10004
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    const-string/jumbo v4, "send_sms_sim_selection_screen_load"

    invoke-interface {v2, v4, v3}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 3096
    check-cast v0, Lo/performAccessibilityActionForItem$ICustomTabsCallback$Stub;

    .line 10008
    iget-object v3, v0, Lo/performAccessibilityActionForItem$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setExactMeasureSpecsFrom;

    .line 11008
    iget-object v0, v0, Lo/performAccessibilityActionForItem$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/setExactMeasureSpecsFrom;

    const-string v4, "$this$showSimSelectionSheet"

    .line 3096
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "sim1"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "sim2"

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11045
    new-instance v4, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v4}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 11046
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->sim1Text:I

    invoke-virtual {v2, v5}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v15, "sim1Text"

    invoke-static {v5, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12022
    iget-object v15, v3, Lo/setExactMeasureSpecsFrom;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 11046
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11047
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->sim2Text:I

    invoke-virtual {v2, v5}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v15, "sim2Text"

    invoke-static {v5, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13022
    iget-object v15, v0, Lo/setExactMeasureSpecsFrom;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 11047
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11048
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->sim1Card:I

    invoke-virtual {v2, v5}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v15, "sim1Card"

    invoke-static {v5, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lo/requestSimpleAnimationsInNextLayout$onRelationshipValidationResult;

    invoke-direct {v15, v2, v3}, Lo/requestSimpleAnimationsInNextLayout$onRelationshipValidationResult;-><init>(Lo/getSelectionModeForAccessibility;Lo/setExactMeasureSpecsFrom;)V

    check-cast v15, Lo/onDisconnectSetValue;

    invoke-static {v5, v15}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 11049
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->sim2Card:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v5, "sim2Card"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lo/requestSimpleAnimationsInNextLayout$asInterface;

    invoke-direct {v5, v2, v0}, Lo/requestSimpleAnimationsInNextLayout$asInterface;-><init>(Lo/getSelectionModeForAccessibility;Lo/setExactMeasureSpecsFrom;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v3, v5}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 11050
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {v4, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 11051
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderGroup:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 13528
    invoke-virtual {v4, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    iput v14, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 11052
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->consentGroup:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 14528
    invoke-virtual {v4, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    iput v14, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 11053
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->simSelectionGroup:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 15528
    invoke-virtual {v4, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    iput v13, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 11054
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->failureGroup:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 16528
    invoke-virtual {v4, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    iput v14, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 11055
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0}, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent(Landroid/view/ViewGroup;)V

    .line 11056
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {v4, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 11057
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->descriptionText:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 11164
    new-instance v3, Lo/requestSimpleAnimationsInNextLayout$asBinder;

    invoke-direct {v3, v2}, Lo/requestSimpleAnimationsInNextLayout$asBinder;-><init>(Lo/getSelectionModeForAccessibility;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 11165
    invoke-virtual {v0, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3098
    :cond_6
    instance-of v3, v0, Lo/performAccessibilityActionForItem$onNavigationEvent;

    if-eqz v3, :cond_7

    const-string v0, "$this$showLoadingState"

    .line 3099
    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17065
    new-instance v0, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v0}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 17066
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 17067
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->loaderGroup:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 17528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v13, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 17068
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3}, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent(Landroid/view/ViewGroup;)V

    .line 17069
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-virtual {v0, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    return-void

    .line 3101
    :cond_7
    instance-of v3, v0, Lo/performAccessibilityActionForItem$asBinder;

    if-eqz v3, :cond_9

    .line 3102
    iput-boolean v4, v2, Lo/getSelectionModeForAccessibility;->extraCallback:Z

    .line 3103
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 3104
    :cond_8
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "smsto:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/performAccessibilityActionForItem$asBinder;

    .line 18009
    iget-object v6, v0, Lo/performAccessibilityActionForItem$asBinder;->onPostMessage:Ljava/lang/String;

    .line 3104
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v3, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 19009
    iget-object v4, v0, Lo/performAccessibilityActionForItem$asBinder;->onMessageChannelReady:Ljava/lang/String;

    const-string/jumbo v6, "sms_body"

    .line 3105
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x7e6

    .line 3104
    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 20004
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    invoke-interface {v2, v5, v3}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 3108
    sget-object v6, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 20009
    iget-object v7, v0, Lo/performAccessibilityActionForItem$asBinder;->onMessageChannelReady:Ljava/lang/String;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const v11, 0x7f0601f9

    const/16 v12, 0xe

    .line 3108
    invoke-static/range {v6 .. v12}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    return-void

    .line 3110
    :cond_9
    instance-of v3, v0, Lo/performAccessibilityActionForItem$extraCallback;

    if-eqz v3, :cond_b

    .line 3111
    check-cast v0, Lo/performAccessibilityActionForItem$extraCallback;

    .line 20013
    iget-object v3, v0, Lo/performAccessibilityActionForItem$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 20014
    iget-object v4, v0, Lo/performAccessibilityActionForItem$extraCallback;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 20015
    iget-object v5, v0, Lo/performAccessibilityActionForItem$extraCallback;->extraCallback:Ljava/lang/CharSequence;

    .line 20017
    iget-object v15, v0, Lo/performAccessibilityActionForItem$extraCallback;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 3116
    new-instance v6, Lo/getSelectionModeForAccessibility$extraCallback;

    invoke-direct {v6, v0}, Lo/getSelectionModeForAccessibility$extraCallback;-><init>(Lo/performAccessibilityActionForItem$extraCallback;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    .line 3117
    new-instance v7, Lo/getSelectionModeForAccessibility$onNavigationEvent;

    invoke-direct {v7, v0}, Lo/getSelectionModeForAccessibility$onNavigationEvent;-><init>(Lo/performAccessibilityActionForItem$extraCallback;)V

    check-cast v7, Landroid/view/View$OnClickListener;

    .line 20019
    iget v0, v0, Lo/performAccessibilityActionForItem$extraCallback;->onTransact:I

    const-string v13, "$this$showErrorSheet"

    .line 3112
    invoke-static {v2, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "title"

    invoke-static {v3, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "desc"

    invoke-static {v4, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "failureImageView"

    if-nez v0, :cond_a

    .line 20082
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->failureImageView:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v13, "$this$gone"

    invoke-static {v0, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21017
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 20084
    :cond_a
    sget v14, Lo/getSwitchMinWidth$onPostMessage;->failureImageView:I

    invoke-virtual {v2, v14}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    invoke-static {v14, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroid/view/View;

    const-string v13, "$this$visible"

    invoke-static {v14, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 22009
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 20085
    sget v13, Lo/getSwitchMinWidth$onPostMessage;->failureImageView:I

    invoke-virtual {v2, v13}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20087
    :goto_0
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->failureTitleText:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v13, "failureTitleText"

    invoke-static {v0, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20088
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->failureDescText:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "failureDescText"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20089
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->failureNegativeSheetCta:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v3, "failureNegativeSheetCta"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v15}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 20090
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->failurePositiveSheetCta:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v3, "failurePositiveSheetCta"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 20091
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->failurePositiveSheetCta:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20092
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->failureNegativeSheetCta:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20093
    new-instance v0, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v0}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 20094
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 20095
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->loaderGroup:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 22528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    const/16 v4, 0x8

    iput v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 20096
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentGroup:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 23528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 20097
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->simSelectionGroup:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 24528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 20098
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->failureGroup:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 25528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 20099
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3}, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent(Landroid/view/ViewGroup;)V

    .line 20100
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v2, v3}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 20101
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->descriptionText:I

    invoke-virtual {v2, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 20167
    new-instance v3, Lo/requestSimpleAnimationsInNextLayout$onTransact;

    invoke-direct {v3, v2}, Lo/requestSimpleAnimationsInNextLayout$onTransact;-><init>(Lo/getSelectionModeForAccessibility;)V

    check-cast v3, Ljava/lang/Runnable;

    const-wide/16 v4, 0x320

    .line 20168
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3122
    :cond_b
    instance-of v3, v0, Lo/performAccessibilityActionForItem$ICustomTabsCallback;

    if-eqz v3, :cond_c

    .line 3123
    check-cast v0, Lo/performAccessibilityActionForItem$ICustomTabsCallback;

    iput-object v0, v2, Lo/getSelectionModeForAccessibility;->onPostMessage:Lo/performAccessibilityActionForItem$ICustomTabsCallback;

    .line 26004
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v3, "send_sms_permission_dialog_load"

    invoke-interface {v2, v3, v0}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "android.permission.SEND_SMS"

    const-string v3, "android.permission.READ_SMS"

    .line 3125
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xbc2

    invoke-virtual {v2, v0, v3}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_c
    return-void
.end method
