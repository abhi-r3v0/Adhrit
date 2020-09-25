.class public final Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/startIntentSenderFromFragment;-><init>()V
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
        "com/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1",
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
.field public final synthetic onPostMessage:Lo/startIntentSenderFromFragment;


# direct methods
.method constructor <init>(Lo/startIntentSenderFromFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    const-string/jumbo v0, "type"

    invoke-static {v5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v1, "pairs"

    const-string v2, "cta_title"

    const-string v3, "lifecycle"

    const-string v7, "cm_card_farm_cta_click"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v0, "manage_card"

    .line 211
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 212
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v11

    invoke-static {v11, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v10, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 359
    new-instance v12, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v12}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v8, v12, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 360
    invoke-virtual {v11}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v13, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v13}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 213
    instance-of v0, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    new-array v13, v9, [Lo/addWrite;

    .line 216
    check-cast v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 2027
    iget-object v14, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2086
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/cm/models/FooterActions;

    if-eqz v14, :cond_1

    .line 2112
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/cm/models/FooterActions;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz v14, :cond_1

    .line 2175
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v14, :cond_1

    .line 3014
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v14, :cond_1

    .line 4000
    iget-object v14, v14, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v14}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    if-eqz v14, :cond_1

    .line 216
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4043
    :cond_1
    new-instance v14, Lo/addWrite;

    invoke-direct {v14, v2, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v13, v10

    .line 216
    invoke-static {v13, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v13}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 214
    invoke-virtual {v0, v7, v1}, Lo/startIntentSenderFromFragment;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 5027
    iget-object v0, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 5088
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 218
    instance-of v0, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v0, :cond_2

    .line 6027
    iget-object v0, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 6088
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 219
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    sget-object v0, Lo/markFragmentsCreated;->extraCallback:Lo/markFragmentsCreated$onNavigationEvent;

    .line 221
    new-instance v0, Lo/markFragmentsCreated$onMessageChannelReady;

    .line 7027
    iget-object v1, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 7088
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 222
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-direct {v0, v1, v5}, Lo/markFragmentsCreated$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Lo/markFragmentsCreated$onNavigationEvent;->extraCallback(Lo/markFragmentsCreated$onMessageChannelReady;)Lo/markFragmentsCreated;

    move-result-object v0

    .line 226
    iget-object v1, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const-string v2, "MANAGE_CHARGES"

    .line 225
    invoke-virtual {v0, v1, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 362
    :cond_2
    iput-boolean v9, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 363
    :cond_3
    invoke-virtual {v11}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_4

    .line 364
    new-instance v7, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    move-object v0, v7

    move-object v1, v11

    move-object v2, v3

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;Lo/StaggeredGridLayoutManager;Ljava/lang/String;)V

    check-cast v7, Lo/createCallback;

    iput-object v7, v12, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 365
    iget-object v0, v12, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v11, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 367
    :cond_4
    :goto_1
    new-instance v0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$onNavigationEvent;

    invoke-direct {v0, v12, v11}, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    :sswitch_1
    const-string v0, "cta2"

    .line 248
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 249
    instance-of v0, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_12

    .line 250
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-static {v0}, Lo/startIntentSenderFromFragment;->onRelationshipValidationResult(Lo/startIntentSenderFromFragment;)Lo/getDimensionPixelOffset;

    .line 251
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 252
    move-object v1, v4

    check-cast v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 9027
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 9071
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz v2, :cond_5

    .line 9175
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    goto :goto_2

    :cond_5
    move-object v2, v8

    .line 253
    :goto_2
    new-instance v3, Lo/addWrite;

    iget-object v4, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-static {v4}, Lo/startIntentSenderFromFragment;->onNavigationEvent(Lo/startIntentSenderFromFragment;)Lo/markState;

    move-result-object v4

    .line 10026
    iget-object v4, v4, Lo/markState;->onMessageChannelReady:Ljava/util/Map;

    .line 253
    invoke-direct {v3, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11015
    invoke-static {v0, v2, v8, v3, v1}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    return-void

    :sswitch_2
    const-string v0, "cta1"

    .line 234
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 235
    instance-of v0, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_12

    .line 236
    move-object v0, v4

    check-cast v0, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 8027
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 8071
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz v1, :cond_6

    .line 8173
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v1, :cond_6

    .line 237
    iget-object v2, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-static {v2}, Lo/startIntentSenderFromFragment;->onRelationshipValidationResult(Lo/startIntentSenderFromFragment;)Lo/getDimensionPixelOffset;

    .line 238
    iget-object v2, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 241
    new-instance v4, Lo/addWrite;

    invoke-static {v2}, Lo/startIntentSenderFromFragment;->onNavigationEvent(Lo/startIntentSenderFromFragment;)Lo/markState;

    move-result-object v2

    .line 9026
    iget-object v2, v2, Lo/markState;->onMessageChannelReady:Ljava/util/Map;

    .line 241
    invoke-direct {v4, v7, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    invoke-static {v3, v1, v8, v4, v0}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_6
    return-void

    :sswitch_3
    const-string/jumbo v0, "view_details"

    .line 259
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_8

    :sswitch_4
    const-string v0, "pay_now"

    .line 270
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 271
    instance-of v0, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_12

    .line 272
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    new-array v5, v9, [Lo/addWrite;

    .line 274
    move-object v11, v4

    check-cast v11, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 13027
    iget-object v12, v11, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 13086
    iget-object v12, v12, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/cm/models/FooterActions;

    if-eqz v12, :cond_7

    .line 13112
    iget-object v12, v12, Lcom/dreamplug/fabrik/ui/cm/models/FooterActions;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz v12, :cond_7

    .line 13173
    iget-object v12, v12, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v12, :cond_7

    .line 14014
    iget-object v12, v12, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v12, :cond_7

    .line 15000
    iget-object v12, v12, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v12}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    if-eqz v12, :cond_7

    .line 274
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_7
    move-object v12, v8

    .line 15043
    :goto_3
    new-instance v13, Lo/addWrite;

    invoke-direct {v13, v2, v12}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v5, v10

    .line 274
    invoke-static {v5, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 272
    invoke-virtual {v0, v7, v1}, Lo/startIntentSenderFromFragment;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 16027
    iget-object v0, v11, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 16088
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 276
    instance-of v0, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v0, :cond_12

    .line 277
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v10, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 369
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v8, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 370
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 16212
    invoke-virtual {v3, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_8

    const/4 v10, 0x1

    :cond_8
    if-eqz v10, :cond_9

    .line 278
    iget-object v3, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-static {v3}, Lo/startIntentSenderFromFragment;->onTransact(Lo/startIntentSenderFromFragment;)Lo/getMoveDuration;

    move-result-object v3

    .line 17027
    iget-object v4, v11, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 17088
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 279
    invoke-virtual {v4}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v4

    .line 18027
    iget-object v5, v11, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 18088
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 280
    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSwipedDirection()Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-virtual {v3, v4, v5}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iput-boolean v9, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_4

    .line 373
    :cond_9
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v3, v5, :cond_a

    .line 374
    new-instance v3, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;

    invoke-direct {v3, v0, v1, p0, v4}, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;Lo/StaggeredGridLayoutManager;)V

    check-cast v3, Lo/createCallback;

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 375
    iget-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 377
    :cond_a
    :goto_4
    new-instance v1, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$onPostMessage;

    invoke-direct {v1, v2, v0}, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$onPostMessage;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    :sswitch_5
    const-string v0, "add_card"

    .line 287
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 288
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v10, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 379
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v8, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 380
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v8

    sget-object v11, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 18212
    invoke-virtual {v8, v11}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-ltz v8, :cond_b

    const/4 v8, 0x1

    goto :goto_5

    :cond_b
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_c

    .line 289
    iget-object v8, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    new-array v11, v9, [Lo/addWrite;

    .line 19043
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v2, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v11, v10

    .line 289
    invoke-static {v11, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v11}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 289
    invoke-virtual {v8, v7, v1}, Lo/startIntentSenderFromFragment;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 291
    sget-object v1, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 292
    iget-object v2, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    move-object v7, v2

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 293
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const-string v8, "childFragmentManager"

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance v8, Lo/detachViewInternal;

    invoke-direct {v8, v5}, Lo/detachViewInternal;-><init>(Ljava/lang/String;)V

    const-string v5, "control header"

    .line 291
    invoke-static {v1, v7, v2, v8, v5}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Lo/setItemPrefetchEnabled;Landroidx/fragment/app/Fragment;Lo/requestExtraBinder;Lo/detachViewInternal;Ljava/lang/String;)V

    .line 382
    iput-boolean v9, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_6

    .line 383
    :cond_c
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v2, :cond_d

    .line 384
    new-instance v1, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;

    invoke-direct {v1, v0, v3, p0, v5}, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;Ljava/lang/String;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 385
    iget-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 387
    :cond_d
    :goto_6
    new-instance v1, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$ICustomTabsCallback;

    invoke-direct {v1, v4, v0}, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    :sswitch_6
    const-string/jumbo v0, "verify_card"

    .line 300
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 301
    instance-of v0, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_12

    .line 302
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    new-array v11, v9, [Lo/addWrite;

    .line 20043
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v2, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v11, v10

    .line 302
    invoke-static {v11, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v11}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 302
    invoke-virtual {v0, v7, v1}, Lo/startIntentSenderFromFragment;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 303
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v10, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 389
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v8, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 390
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 20212
    invoke-virtual {v3, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_e

    const/4 v10, 0x1

    :cond_e
    if-eqz v10, :cond_10

    .line 304
    move-object v3, v4

    check-cast v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 21027
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 21088
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 304
    instance-of v4, v4, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v4, :cond_f

    .line 22027
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 22088
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 306
    sget-object v5, Lo/onReset;->onPostMessage:Lo/onReset$onRelationshipValidationResult;

    .line 307
    new-instance v5, Lo/onReset$extraCallback;

    .line 23027
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 23088
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 308
    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSwipedDirection()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    .line 307
    invoke-direct {v5, v4, v8, v3, v7}, Lo/onReset$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    invoke-static {v5}, Lo/onReset$onRelationshipValidationResult;->extraCallback(Lo/onReset$extraCallback;)Lo/onReset;

    move-result-object v3

    .line 311
    iget-object v4, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    const-string v5, "AddCardDialogTag"

    invoke-virtual {v3, v4, v5}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 392
    :cond_f
    iput-boolean v9, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_7

    .line 393
    :cond_10
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v3, v5, :cond_11

    .line 394
    new-instance v3, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;

    invoke-direct {v3, v0, v1, p0, v4}, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;Lo/StaggeredGridLayoutManager;)V

    check-cast v3, Lo/createCallback;

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 395
    iget-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 397
    :cond_11
    :goto_7
    new-instance v1, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$onMessageChannelReady;

    invoke-direct {v1, v2, v0}, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    goto :goto_9

    :sswitch_7
    const-string v0, "item_click"

    .line 259
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 260
    :goto_8
    instance-of v0, v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_12

    .line 261
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-static {v0}, Lo/startIntentSenderFromFragment;->onRelationshipValidationResult(Lo/startIntentSenderFromFragment;)Lo/getDimensionPixelOffset;

    .line 262
    iget-object v0, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 263
    move-object v1, v4

    check-cast v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 11027
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 11073
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 264
    new-instance v3, Lo/addWrite;

    iget-object v4, v6, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-static {v4}, Lo/startIntentSenderFromFragment;->onNavigationEvent(Lo/startIntentSenderFromFragment;)Lo/markState;

    move-result-object v4

    .line 12026
    iget-object v4, v4, Lo/markState;->onMessageChannelReady:Ljava/util/Map;

    const-string v5, "cm_card_farm_card_click"

    .line 264
    invoke-direct {v3, v5, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13015
    invoke-static {v0, v2, v8, v3, v1}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_12
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x753e36a4 -> :sswitch_7
        -0x7427f0ea -> :sswitch_6
        -0x49b10812 -> :sswitch_5
        -0x2eea0941 -> :sswitch_4
        -0x2c1ea158 -> :sswitch_3
        0x2ec021 -> :sswitch_2
        0x2ec022 -> :sswitch_1
        0x1522daa -> :sswitch_0
    .end sparse-switch
.end method
