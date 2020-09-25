.class public final Lo/haltActionBarHideOffsetAnimations;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static final onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static final onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string/jumbo v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string/jumbo v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    const-string v9, "chars"

    const-string v10, "markers"

    .line 27
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/haltActionBarHideOffsetAnimations;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v1, "id"

    const-string v2, "layers"

    const-string/jumbo v3, "w"

    const-string v4, "h"

    const-string v5, "p"

    const-string/jumbo v6, "u"

    .line 138
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/haltActionBarHideOffsetAnimations;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "list"

    .line 204
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/haltActionBarHideOffsetAnimations;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "cm"

    const-string/jumbo v1, "tm"

    const-string v2, "dr"

    .line 237
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/haltActionBarHideOffsetAnimations;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/restoreToolbarHierarchyState;",
            "Ljava/util/List<",
            "Lo/setSplitBackground;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 246
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 251
    :goto_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    sget-object v3, Lo/haltActionBarHideOffsetAnimations;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v3}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 263
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 264
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_1

    .line 260
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_1

    .line 254
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 267
    :cond_3
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    .line 268
    new-instance v3, Lo/setSplitBackground;

    invoke-direct {v3, v0, v1, v2}, Lo/setSplitBackground;-><init>(Ljava/lang/String;FF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;Lo/describeContents;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/restoreToolbarHierarchyState;",
            "Lo/createCheckBox;",
            "Lo/describeContents<",
            "Lo/isCurrent$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 230
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p0, p1}, Lo/onStartNestedScroll;->extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/isCurrent$onNavigationEvent;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Lo/describeContents;->onPostMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    return-void
.end method

.method public static extraCallback(Lo/restoreToolbarHierarchyState;)Lo/createCheckBox;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 42
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v1

    .line 46
    new-instance v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 51
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 52
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 53
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v8, Lo/describeContents;

    invoke-direct {v8}, Lo/describeContents;-><init>()V

    .line 56
    new-instance v9, Lo/createCheckBox;

    invoke-direct {v9}, Lo/createCheckBox;-><init>()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 58
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 59
    sget-object v11, Lo/haltActionBarHideOffsetAnimations;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v11}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    move-object v0, v6

    move-object/from16 v18, v7

    .line 102
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto/16 :goto_2

    .line 99
    :pswitch_0
    invoke-static {v0, v7}, Lo/haltActionBarHideOffsetAnimations;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Ljava/util/List;)V

    goto :goto_1

    .line 96
    :pswitch_1
    invoke-static {v0, v9, v8}, Lo/haltActionBarHideOffsetAnimations;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;Lo/describeContents;)V

    goto :goto_1

    .line 93
    :pswitch_2
    invoke-static {v0, v6}, Lo/haltActionBarHideOffsetAnimations;->extraCallback(Lo/restoreToolbarHierarchyState;Ljava/util/Map;)V

    goto :goto_1

    .line 90
    :pswitch_3
    invoke-static {v0, v9, v4, v5}, Lo/haltActionBarHideOffsetAnimations;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 87
    :pswitch_4
    invoke-static {v0, v9, v3, v2}, Lo/haltActionBarHideOffsetAnimations;->extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;Ljava/util/List;Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V

    :goto_1
    move-object v0, v6

    move-object/from16 v18, v7

    goto :goto_2

    .line 76
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v11

    const-string v0, "\\."

    .line 77
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    .line 78
    aget-object v17, v0, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v17, 0x1

    .line 79
    aget-object v17, v0, v17

    move-object/from16 v18, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v17, 0x2

    .line 80
    aget-object v0, v0, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    invoke-static {v11, v7, v0}, Lo/ActionBarOverlayLayout$LayoutParams;->onNavigationEvent(III)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    .line 1089
    invoke-static {v0}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 1090
    iget-object v7, v9, Lo/createCheckBox;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v6

    goto :goto_2

    :pswitch_6
    move-object v0, v6

    move-object/from16 v18, v7

    .line 73
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v6

    double-to-float v13, v6

    goto :goto_2

    :pswitch_7
    move-object v0, v6

    move-object/from16 v18, v7

    .line 70
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3c23d70a    # 0.01f

    sub-float v12, v6, v7

    goto :goto_2

    :pswitch_8
    move-object v0, v6

    move-object/from16 v18, v7

    .line 67
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v6

    double-to-float v10, v6

    :goto_2
    move-object v6, v0

    move-object/from16 v7, v18

    goto :goto_3

    :pswitch_9
    move-object v0, v6

    move-object/from16 v18, v7

    .line 64
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v15

    goto :goto_3

    :pswitch_a
    move-object v0, v6

    move-object/from16 v18, v7

    .line 61
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v14

    :goto_3
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1
    move-object v0, v6

    move-object/from16 v18, v7

    int-to-float v6, v14

    mul-float v6, v6, v1

    float-to-int v6, v6

    int-to-float v7, v15

    mul-float v7, v7, v1

    float-to-int v1, v7

    .line 108
    new-instance v7, Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-direct {v7, v11, v11, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2074
    iput-object v7, v9, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 2075
    iput v10, v9, Lo/createCheckBox;->newSession:F

    .line 2076
    iput v12, v9, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 2077
    iput v13, v9, Lo/createCheckBox;->ICustomTabsService:F

    .line 2078
    iput-object v3, v9, Lo/createCheckBox;->onTransact:Ljava/util/List;

    .line 2079
    iput-object v2, v9, Lo/createCheckBox;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 2080
    iput-object v4, v9, Lo/createCheckBox;->extraCallback:Ljava/util/Map;

    .line 2081
    iput-object v5, v9, Lo/createCheckBox;->onPostMessage:Ljava/util/Map;

    .line 2082
    iput-object v8, v9, Lo/createCheckBox;->asBinder:Lo/describeContents;

    .line 2083
    iput-object v0, v9, Lo/createCheckBox;->onNavigationEvent:Ljava/util/Map;

    move-object/from16 v0, v18

    .line 2084
    iput-object v0, v9, Lo/createCheckBox;->asInterface:Ljava/util/List;

    return-object v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static extraCallback(Lo/restoreToolbarHierarchyState;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/restoreToolbarHierarchyState;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/isCurrent$extraCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    .line 208
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    sget-object v0, Lo/haltActionBarHideOffsetAnimations;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 220
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 212
    :goto_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-static {p0}, Lo/onStopNestedScroll;->onNavigationEvent(Lo/restoreToolbarHierarchyState;)Lo/isCurrent$extraCallback;

    move-result-object v0

    .line 6027
    iget-object v1, v0, Lo/isCurrent$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 214
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 216
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    return-void
.end method

.method private static extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;Ljava/util/List;Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/restoreToolbarHierarchyState;",
            "Lo/createCheckBox;",
            "Ljava/util/List<",
            "Lo/setActionBarVisibilityCallback;",
            ">;",
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Lo/setActionBarVisibilityCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    const/4 v0, 0x0

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-static {p0, p1}, Lo/setActionBarHideOffset;->extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/setActionBarVisibilityCallback;

    move-result-object v1

    .line 2131
    iget-object v2, v1, Lo/setActionBarVisibilityCallback;->onPostMessage:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 122
    sget-object v3, Lo/setActionBarVisibilityCallback$onPostMessage;->extraCallback:Lo/setActionBarVisibilityCallback$onPostMessage;

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3107
    iget-wide v2, v1, Lo/setActionBarVisibilityCallback;->onNavigationEvent:J

    .line 126
    invoke-virtual {p3, v2, v3, v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You have "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    return-void
.end method

.method private static onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/restoreToolbarHierarchyState;",
            "Lo/createCheckBox;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/setActionBarVisibilityCallback;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 150
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    .line 160
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    const/4 v3, 0x0

    .line 161
    :goto_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 162
    sget-object v6, Lo/haltActionBarHideOffsetAnimations;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v6}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v6

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    .line 188
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 189
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v3

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v2

    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 168
    :goto_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 169
    invoke-static {p0, p1}, Lo/setActionBarHideOffset;->extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/setActionBarVisibilityCallback;

    move-result-object v6

    .line 4107
    iget-wide v7, v6, Lo/setActionBarVisibilityCallback;->onNavigationEvent:J

    .line 170
    invoke-virtual {v1, v7, v8, v6}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    .line 171
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    :cond_5
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    goto :goto_1

    .line 164
    :cond_6
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 192
    :cond_7
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    if-eqz v4, :cond_8

    .line 194
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;

    invoke-direct {v0, v2, v3, v5, v4}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 5037
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->onNavigationEvent:Ljava/lang/String;

    .line 196
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_8
    invoke-interface {p2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 201
    :cond_9
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    return-void
.end method
