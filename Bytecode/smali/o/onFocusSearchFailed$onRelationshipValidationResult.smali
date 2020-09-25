.class public final Lo/onFocusSearchFailed$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onFocusSearchFailed;-><init>()V
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
        "com/dreamplug/fabrik/ui/lending/StashLandingFragment$onClick$1",
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
.field private synthetic extraCallback:Lo/onFocusSearchFailed;


# direct methods
.method constructor <init>(Lo/onFocusSearchFailed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 11

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "extraData"

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    const-string v2, "pairs"

    const-string/jumbo v3, "template_name"

    const/4 v4, 0x1

    const-string v5, "(this as java.lang.String).toLowerCase()"

    const-string v6, "cta_title"

    const/4 v7, 0x2

    const-string/jumbo v8, "stash_landing_screen_cta_click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p3, "loan_management"

    .line 183
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 184
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz p1, :cond_f

    .line 185
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 1028
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/TemplateData;

    if-eqz p1, :cond_3

    .line 1050
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateData;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 186
    iget-object p3, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    invoke-static {p3}, Lo/onFocusSearchFailed;->extraCallback(Lo/onFocusSearchFailed;)Lo/getMoveDuration;

    move-result-object p3

    .line 2025
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->extraCallback:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string/jumbo p2, "stash_landing"

    .line 187
    :cond_0
    iget-object v0, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    invoke-static {v0}, Lo/onFocusSearchFailed;->ICustomTabsCallback(Lo/onFocusSearchFailed;)Lo/measureChildWithDecorationsAndMargin;

    move-result-object v0

    .line 2026
    iget-object v0, v0, Lo/measureChildWithDecorationsAndMargin;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;

    if-eqz v0, :cond_1

    .line 2043
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;->extraCallback:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    .line 186
    :cond_2
    invoke-virtual {p3, p2, v0, p1}, Lo/getMoveDuration;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :sswitch_1
    const-string p3, "error"

    .line 240
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 241
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;

    if-nez p1, :cond_4

    move-object p2, v9

    :cond_4
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;

    if-eqz p2, :cond_5

    .line 17026
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta$Data;

    if-eqz p1, :cond_5

    .line 17035
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Data;->onPostMessage:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 243
    iget-object p2, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    invoke-static {p2}, Lo/onFocusSearchFailed;->onNavigationEvent(Lo/onFocusSearchFailed;)Lo/onActivityResult;

    move-result-object p2

    iget-object p3, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "requireContext()"

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18032
    sget v0, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {p2, p3, p1, v10, v0}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_5
    return-void

    :sswitch_2
    const-string p3, "cta2"

    .line 212
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 213
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz p1, :cond_f

    .line 214
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 9027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;

    if-eqz p1, :cond_8

    .line 9051
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p2, :cond_8

    .line 10015
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz p3, :cond_6

    .line 11000
    iget-object p3, p3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    move-object v9, p3

    check-cast v9, Ljava/lang/CharSequence;

    .line 216
    :cond_6
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    new-array v1, v7, [Lo/addWrite;

    .line 11043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v6, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v10

    .line 12039
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->extraCallback:Ljava/lang/String;

    .line 12043
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, v1, v4

    .line 217
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 217
    invoke-virtual {v0, v8, p1}, Lo/onFocusSearchFailed;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    sget-object p1, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    iget-object p1, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    check-cast p1, Landroidx/fragment/app/Fragment;

    new-instance p3, Lo/getMovementFlags$onMessageChannelReady;

    invoke-direct {p3, p2}, Lo/getMovementFlags$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V

    invoke-static {p1, p3}, Lo/getMovementFlags;->onNavigationEvent(Landroidx/fragment/app/Fragment;Lo/getMovementFlags$onMessageChannelReady;)V

    return-void

    .line 216
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void

    :sswitch_3
    const-string p3, "cta1"

    .line 199
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 200
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz p1, :cond_f

    .line 201
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 5027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;

    if-eqz p1, :cond_b

    .line 5049
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p2, :cond_b

    .line 6015
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz p3, :cond_9

    .line 7000
    iget-object p3, p3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    move-object v9, p3

    check-cast v9, Ljava/lang/CharSequence;

    .line 203
    :cond_9
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    new-array v1, v7, [Lo/addWrite;

    .line 7043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v6, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v10

    .line 8039
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->extraCallback:Ljava/lang/String;

    .line 8043
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, v1, v4

    .line 204
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 204
    invoke-virtual {v0, v8, p1}, Lo/onFocusSearchFailed;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    sget-object p1, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    iget-object p1, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    check-cast p1, Landroidx/fragment/app/Fragment;

    new-instance p3, Lo/getMovementFlags$onMessageChannelReady;

    invoke-direct {p3, p2}, Lo/getMovementFlags$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V

    invoke-static {p1, p3}, Lo/getMovementFlags;->onNavigationEvent(Landroidx/fragment/app/Fragment;Lo/getMovementFlags$onMessageChannelReady;)V

    return-void

    .line 203
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-void

    :sswitch_4
    const-string p2, "back"

    .line 247
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 248
    iget-object p1, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo p2, "withdraw_loan"

    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    invoke-static {p1}, Lo/onFocusSearchFailed;->extraCallback(Lo/onFocusSearchFailed;)Lo/getMoveDuration;

    move-result-object p1

    new-instance p3, Lo/onDetach$IPostMessageService$Stub;

    const/4 v1, 0x6

    invoke-direct {p3, p2, v1}, Lo/onDetach$IPostMessageService$Stub;-><init>(Ljava/lang/String;I)V

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16441
    new-instance p2, Lo/onGetChildDrawingOrder$MediaBrowserCompat;

    invoke-direct {p2, p3}, Lo/onGetChildDrawingOrder$MediaBrowserCompat;-><init>(Lo/onDetach$IPostMessageService$Stub;)V

    check-cast p2, Lo/getRemoveDuration;

    invoke-virtual {p1, p2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_6
    const-string p3, "quick_action"

    .line 225
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 226
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz p1, :cond_f

    .line 227
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 13027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;

    if-eqz p1, :cond_e

    .line 13063
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->newSession:Lo/getTargetScrollPosition;

    if-eqz p2, :cond_d

    .line 229
    iget-object p3, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    new-array v0, v7, [Lo/addWrite;

    .line 14000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 229
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14043
    new-instance v1, Lo/addWrite;

    invoke-direct {v1, v6, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v10

    .line 15039
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->extraCallback:Ljava/lang/String;

    .line 15043
    new-instance v1, Lo/addWrite;

    invoke-direct {v1, v3, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    .line 229
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 229
    invoke-virtual {p3, v8, p2}, Lo/onFocusSearchFailed;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16049
    :cond_d
    :goto_0
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p1, :cond_e

    .line 232
    sget-object p2, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    iget-object p2, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    check-cast p2, Landroidx/fragment/app/Fragment;

    new-instance p3, Lo/getMovementFlags$onMessageChannelReady;

    invoke-direct {p3, p1}, Lo/getMovementFlags$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V

    invoke-static {p2, p3}, Lo/getMovementFlags;->onNavigationEvent(Landroidx/fragment/app/Fragment;Lo/getMovementFlags$onMessageChannelReady;)V

    :cond_e
    return-void

    :sswitch_7
    const-string p3, "draft_loan"

    .line 192
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 193
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz p1, :cond_f

    .line 194
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 3028
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/TemplateData;

    if-eqz p1, :cond_f

    .line 195
    iget-object p2, p0, Lo/onFocusSearchFailed$onRelationshipValidationResult;->extraCallback:Lo/onFocusSearchFailed;

    invoke-static {p2}, Lo/onFocusSearchFailed;->extraCallback(Lo/onFocusSearchFailed;)Lo/getMoveDuration;

    move-result-object p2

    new-instance p3, Lo/onDetach$IPostMessageService$Stub;

    .line 3051
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateData;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;

    .line 4049
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateData;->onPostMessage:Ljava/util/List;

    const-string v2, "draft"

    .line 195
    invoke-direct {p3, v2, v1, p1}, Lo/onDetach$IPostMessageService$Stub;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;Ljava/util/List;)V

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4441
    new-instance p1, Lo/onGetChildDrawingOrder$MediaBrowserCompat;

    invoke-direct {p1, p3}, Lo/onGetChildDrawingOrder$MediaBrowserCompat;-><init>(Lo/onDetach$IPostMessageService$Stub;)V

    check-cast p1, Lo/getRemoveDuration;

    invoke-virtual {p2, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_f
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x51691f32 -> :sswitch_7
        -0x4dbcbf38 -> :sswitch_6
        -0x3b0836fb -> :sswitch_5
        0x2e04e7 -> :sswitch_4
        0x2ec021 -> :sswitch_3
        0x2ec022 -> :sswitch_2
        0x5c4d208 -> :sswitch_1
        0x5b4a92f2 -> :sswitch_0
    .end sparse-switch
.end method
