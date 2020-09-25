.class final Lo/recycleViewsFromEnd$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleViewsFromEnd;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "clickedView",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/recycleViewsFromEnd;


# direct methods
.method constructor <init>(Lo/recycleViewsFromEnd;)V
    .locals 0

    iput-object p1, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 47
    check-cast p1, Landroid/view/View;

    const-string v0, "clickedView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->wishlistIcon:I

    invoke-virtual {v0, v1}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pairs"

    const/4 v2, 0x0

    const-string/jumbo v3, "source"

    const/4 v4, 0x1

    const-string v5, "action"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "compass_cta"

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->wishlistCta:I

    invoke-virtual {v0, v9}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1152
    :cond_0
    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->mosiacIcon:I

    invoke-virtual {v0, v9}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->switchMosaicCta:I

    invoke-virtual {v0, v9}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1161
    :cond_1
    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->switchCollectionCta:I

    invoke-virtual {v0, v9}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->collectionIcon:I

    invoke-virtual {v0, v9}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1170
    :cond_2
    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->citySelectorView:I

    invoke-virtual {v0, v1}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/saveOldPosition;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1171
    iget-object p1, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    invoke-static {p1}, Lo/recycleViewsFromEnd;->onPostMessage(Lo/recycleViewsFromEnd;)V

    goto/16 :goto_3

    .line 1162
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    invoke-static {p1}, Lo/recycleViewsFromEnd;->onNavigationEvent(Lo/recycleViewsFromEnd;)Lo/shouldMeasureTwice;

    move-result-object p1

    .line 6010
    iget-object p1, p1, Lo/shouldMeasureTwice;->extraCallback:Lo/setActive;

    const-string v0, "category_fragment"

    .line 1162
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    new-array p1, v7, [Lo/addWrite;

    .line 6043
    new-instance v0, Lo/addWrite;

    const-string v9, "collection"

    invoke-direct {v0, v5, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v6

    .line 1166
    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    invoke-static {v0}, Lo/recycleViewsFromEnd;->ICustomTabsCallback(Lo/recycleViewsFromEnd;)Lo/recycleViewsFromEnd$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6297
    iget-object v2, v0, Lo/recycleViewsFromEnd$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 7043
    :cond_4
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, v3, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v4

    .line 1164
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1163
    invoke-static {v8, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_3

    .line 1153
    :cond_5
    :goto_1
    iget-object p1, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    invoke-static {p1}, Lo/recycleViewsFromEnd;->onNavigationEvent(Lo/recycleViewsFromEnd;)Lo/shouldMeasureTwice;

    move-result-object p1

    .line 4010
    iget-object p1, p1, Lo/shouldMeasureTwice;->extraCallback:Lo/setActive;

    const-string v0, "mosaic_fragment"

    .line 1153
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    new-array p1, v7, [Lo/addWrite;

    .line 4043
    new-instance v0, Lo/addWrite;

    const-string v9, "mosaic"

    invoke-direct {v0, v5, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v6

    .line 1157
    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    invoke-static {v0}, Lo/recycleViewsFromEnd;->ICustomTabsCallback(Lo/recycleViewsFromEnd;)Lo/recycleViewsFromEnd$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4297
    iget-object v2, v0, Lo/recycleViewsFromEnd$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 5043
    :cond_6
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, v3, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v4

    .line 1155
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1154
    invoke-static {v8, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_3

    .line 1144
    :cond_7
    :goto_2
    iget-object p1, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    invoke-static {p1}, Lo/recycleViewsFromEnd;->onNavigationEvent(Lo/recycleViewsFromEnd;)Lo/shouldMeasureTwice;

    move-result-object p1

    .line 2010
    iget-object p1, p1, Lo/shouldMeasureTwice;->extraCallback:Lo/setActive;

    const-string/jumbo v0, "wishlist_fragment"

    .line 1144
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    new-array p1, v7, [Lo/addWrite;

    .line 2043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v9, "wishlist"

    invoke-direct {v0, v5, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v6

    .line 1148
    iget-object v0, p0, Lo/recycleViewsFromEnd$asInterface;->ICustomTabsCallback:Lo/recycleViewsFromEnd;

    invoke-static {v0}, Lo/recycleViewsFromEnd;->ICustomTabsCallback(Lo/recycleViewsFromEnd;)Lo/recycleViewsFromEnd$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2297
    iget-object v2, v0, Lo/recycleViewsFromEnd$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 3043
    :cond_8
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, v3, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v4

    .line 1146
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1145
    invoke-static {v8, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 47
    :cond_9
    :goto_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
