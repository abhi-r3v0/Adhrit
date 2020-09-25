.class public final Lo/isHideOnContentScrollEnabled;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AppCompatImageHelper;",
            "Lo/setPrecomputedText<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AppCompatImageHelper;",
            "Lo/setPrecomputedText<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/isHideOnContentScrollEnabled;->onNavigationEvent:Ljava/util/Map;

    .line 4011
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/isHideOnContentScrollEnabled;->onPostMessage:Ljava/util/Map;

    return-void
.end method

.method static onMessageChannelReady(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/generateDefaultLayoutParams;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 25
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asInterface()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/16 v7, 0x6f

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v6, v7, :cond_3

    const/16 v7, 0xe04

    if-eq v6, v7, :cond_2

    const v7, 0x197f1

    if-eq v6, v7, :cond_1

    const v7, 0x3339a3

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "mode"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    const-string v6, "inv"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    goto :goto_2

    :cond_2
    const-string v6, "pt"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const-string v6, "o"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, -0x1

    :goto_2
    if-eqz v6, :cond_8

    if-eq v6, v11, :cond_7

    if-eq v6, v10, :cond_6

    if-eq v6, v9, :cond_5

    .line 58
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 55
    :cond_5
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v4

    goto :goto_0

    .line 3038
    :cond_6
    new-instance v3, Lo/getTabContainer;

    sget-object v5, Lo/onNestedPreFling;->extraCallback:Lo/onNestedPreFling;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 3079
    invoke-static {p0, p1, v6, v5}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v5

    .line 3038
    invoke-direct {v3, v5}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 2054
    :cond_7
    new-instance v2, Lo/onDetachedFromWindow;

    .line 2055
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v5

    sget-object v6, Lo/setUiOptions;->onPostMessage:Lo/setUiOptions;

    .line 2087
    invoke-static {p0, p1, v5, v6}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v5

    .line 2055
    invoke-direct {v2, v5}, Lo/onDetachedFromWindow;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 28
    :cond_8
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/16 v7, 0x61

    if-eq v6, v7, :cond_c

    const/16 v7, 0x69

    if-eq v6, v7, :cond_b

    const/16 v7, 0x6e

    if-eq v6, v7, :cond_a

    const/16 v7, 0x73

    if-eq v6, v7, :cond_9

    goto :goto_3

    :cond_9
    const-string/jumbo v6, "s"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v8, 0x1

    goto :goto_3

    :cond_a
    const-string v6, "n"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v8, 0x2

    goto :goto_3

    :cond_b
    const-string v6, "i"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v8, 0x3

    goto :goto_3

    :cond_c
    const-string v6, "a"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v8, 0x0

    :cond_d
    :goto_3
    if-eqz v8, :cond_11

    if-eq v8, v11, :cond_10

    if-eq v8, v10, :cond_f

    if-eq v8, v9, :cond_e

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Unknown mask mode "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Defaulting to Add."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 45
    sget-object v1, Lo/generateDefaultLayoutParams$onPostMessage;->ICustomTabsCallback:Lo/generateDefaultLayoutParams$onPostMessage;

    goto/16 :goto_0

    :cond_e
    const-string v1, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 1089
    invoke-static {v1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 1090
    iget-object v5, p1, Lo/createCheckBox;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v1, Lo/generateDefaultLayoutParams$onPostMessage;->onPostMessage:Lo/generateDefaultLayoutParams$onPostMessage;

    goto/16 :goto_0

    .line 36
    :cond_f
    sget-object v1, Lo/generateDefaultLayoutParams$onPostMessage;->extraCallback:Lo/generateDefaultLayoutParams$onPostMessage;

    goto/16 :goto_0

    .line 33
    :cond_10
    sget-object v1, Lo/generateDefaultLayoutParams$onPostMessage;->onMessageChannelReady:Lo/generateDefaultLayoutParams$onPostMessage;

    goto/16 :goto_0

    .line 30
    :cond_11
    sget-object v1, Lo/generateDefaultLayoutParams$onPostMessage;->ICustomTabsCallback:Lo/generateDefaultLayoutParams$onPostMessage;

    goto/16 :goto_0

    .line 61
    :cond_12
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    .line 63
    new-instance p0, Lo/generateDefaultLayoutParams;

    invoke-direct {p0, v1, v2, v3, v4}, Lo/generateDefaultLayoutParams;-><init>(Lo/generateDefaultLayoutParams$onPostMessage;Lo/onDetachedFromWindow;Lo/getTabContainer;Z)V

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/AppCompatImageHelper;Lo/setPrecomputedText;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            "Lo/setPrecomputedText<",
            "*>;)V"
        }
    .end annotation

    .line 4191
    iget-boolean v0, p2, Lo/setPrecomputedText;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 5034
    iget-object v0, p0, Lo/isHideOnContentScrollEnabled;->onPostMessage:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/isHideOnContentScrollEnabled;->onNavigationEvent:Ljava/util/Map;

    .line 4028
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4029
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
