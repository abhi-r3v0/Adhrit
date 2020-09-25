.class final Lo/onNestedPreScroll;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ty"

    const-string v1, "d"

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/onNestedPreScroll;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/initTitle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v0, 0x2

    const/4 v1, 0x2

    .line 32
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 33
    sget-object v2, Lo/onNestedPreScroll;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v2}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v2

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    .line 41
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 42
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_3

    return-object v4

    :cond_3
    const/4 v5, -0x1

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string/jumbo v0, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto/16 :goto_3

    :sswitch_1
    const-string/jumbo v0, "tm"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string/jumbo v0, "st"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_3

    :sswitch_3
    const-string/jumbo v0, "sr"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    goto :goto_3

    :sswitch_4
    const-string/jumbo v0, "sh"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_3

    :sswitch_5
    const-string/jumbo v0, "rp"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    goto :goto_3

    :sswitch_6
    const-string v0, "rc"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_3

    :sswitch_7
    const-string v0, "mm"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto :goto_3

    :sswitch_8
    const-string v3, "gs"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :sswitch_9
    const-string v0, "gr"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_a
    const-string v0, "gf"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_3

    :sswitch_b
    const-string v0, "fl"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_3

    :sswitch_c
    const-string v0, "el"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, -0x1

    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown shape type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_4

    .line 92
    :pswitch_0
    invoke-static {p0, p1}, Lo/setWindowTitle;->onMessageChannelReady(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/newArray;

    move-result-object v4

    goto :goto_4

    .line 86
    :pswitch_1
    invoke-static {p0}, Lo/postRemoveActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;)Lo/setTitleOptional;

    move-result-object v4

    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 1089
    invoke-static {v0}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 1090
    iget-object p1, p1, Lo/createCheckBox;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 83
    :pswitch_2
    invoke-static {p0, p1}, Lo/shouldHideActionBarOnFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/shouldDelayChildPressedState;

    move-result-object v4

    goto :goto_4

    .line 80
    :pswitch_3
    invoke-static {p0, p1}, Lo/saveToolbarHierarchyState;->onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/init;

    move-result-object v4

    goto :goto_4

    .line 77
    :pswitch_4
    invoke-static {p0, p1}, Lo/initFeature;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/getMediaId;

    move-result-object v4

    goto :goto_4

    .line 74
    :pswitch_5
    invoke-static {p0, p1, v1}, Lo/draw;->onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;I)Lo/isCurrent$ICustomTabsCallback;

    move-result-object v4

    goto :goto_4

    .line 71
    :pswitch_6
    invoke-static {p0, p1}, Lo/setMenu;->onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/getIconBitmap;

    move-result-object v4

    goto :goto_4

    .line 68
    :pswitch_7
    invoke-static {p0, p1}, Lo/onApplyWindowInsets;->extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onMeasure;

    move-result-object v4

    goto :goto_4

    .line 65
    :pswitch_8
    invoke-static {p0, p1}, Lo/pullChildren;->onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/initForMode;

    move-result-object v4

    goto :goto_4

    .line 62
    :pswitch_9
    invoke-static {p0, p1}, Lo/hasIcon;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onInitializeAccessibilityEvent;

    move-result-object v4

    goto :goto_4

    .line 59
    :pswitch_a
    invoke-static {p0, p1}, Lo/getNestedScrollAxes;->extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/killMode;

    move-result-object v4

    goto :goto_4

    .line 56
    :pswitch_b
    invoke-static {p0, p1}, Lo/setMenuPrepared;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/generateLayoutParams;

    move-result-object v4

    goto :goto_4

    .line 53
    :pswitch_c
    invoke-static {p0, p1}, Lo/setLogo;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/MediaBrowserCompat$MediaItem$Flags;

    move-result-object v4

    .line 98
    :goto_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 99
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_4

    .line 101
    :cond_5
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_c
        0xcc6 -> :sswitch_b
        0xcdf -> :sswitch_a
        0xceb -> :sswitch_9
        0xcec -> :sswitch_8
        0xda0 -> :sswitch_7
        0xe31 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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
