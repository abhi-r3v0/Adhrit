.class public final Lo/recycle$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field public final synthetic onNavigationEvent:Lo/recycle;


# direct methods
.method constructor <init>(Lo/recycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    const-string/jumbo v0, "type"

    invoke-static {v4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    iget-object v0, v6, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v7

    const-string v0, "lifecycle"

    invoke-static {v7, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 451
    new-instance v8, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v8}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 452
    invoke-virtual {v7}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_7

    const-string v0, "need_help"

    .line 418
    invoke-static {v4, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, v6, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-static {v0}, Lo/recycle;->asInterface(Lo/recycle;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "source"

    const-string v4, "onboarding_verify_card_list"

    .line 420
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onboarding_cv_need_help"

    .line 419
    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 422
    iget-object v0, v6, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-static {v0}, Lo/recycle;->onNavigationEvent(Lo/recycle;)Lo/setTitleMarginStart;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 423
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f1304ef

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "support/articles/43000559833"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "url"

    .line 425
    invoke-virtual {v11, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v1, Lo/setTitleMarginStart$extraCallback;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    const-string v10, "SUPPORT_VIEW_FRAGMENT"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    new-instance v4, Lo/getThumbTintList;

    invoke-direct {v4, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 429
    :cond_1
    instance-of v0, v5, Lo/getDecoratedRight;

    if-eqz v0, :cond_6

    .line 433
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x789e0c

    const-string v9, "activate_cta_click"

    const-string v10, "card_tap"

    if-eq v0, v1, :cond_3

    const v1, 0x37675a4d

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 435
    :cond_3
    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v13, v10

    goto :goto_2

    :cond_4
    :goto_0
    const-string v9, "NA"

    :goto_1
    move-object v13, v9

    .line 438
    :goto_2
    new-instance v11, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-object v0, v5

    check-cast v0, Lo/getDecoratedRight;

    .line 2034
    iget-object v0, v0, Lo/getDecoratedRight;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v0, :cond_5

    .line 438
    invoke-direct {v11, v0}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    .line 440
    iget-object v0, v6, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-static {v0}, Lo/recycle;->onNavigationEvent(Lo/recycle;)Lo/setTitleMarginStart;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 440
    new-instance v1, Lo/getThumbTintList;

    new-instance v4, Lo/setTitleMarginStart$extraCallback;

    const/16 v16, 0x0

    new-instance v17, Lo/setTitleMarginBottom$extraCallback;

    iget-object v5, v6, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-static {v5}, Lo/recycle;->asBinder(Lo/recycle;)Lo/getBottomDecorationHeight;

    move-result-object v5

    .line 3027
    iget v14, v5, Lo/getBottomDecorationHeight;->onNavigationEvent:I

    const/4 v15, 0x4

    const-string/jumbo v12, "verify_cards"

    move-object/from16 v10, v17

    .line 440
    invoke-direct/range {v10 .. v15}, Lo/setTitleMarginBottom$extraCallback;-><init>(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1a

    const-string v15, "NEW_VERIFY_CARD_FRAGMENT"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v1, v4}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_3

    .line 438
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.control.CardDetails"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_6
    :goto_3
    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_4

    .line 455
    :cond_7
    invoke-virtual {v7}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_8

    .line 456
    new-instance v9, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    move-object v0, v9

    move-object v1, v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/recycle$ICustomTabsCallback;Ljava/lang/String;Lo/StaggeredGridLayoutManager;)V

    check-cast v9, Lo/createCallback;

    iput-object v9, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 457
    iget-object v0, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v7, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 459
    :cond_8
    :goto_4
    new-instance v0, Lo/recycle$ICustomTabsCallback$onMessageChannelReady;

    invoke-direct {v0, v8, v7}, Lo/recycle$ICustomTabsCallback$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
