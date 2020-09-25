.class final Lo/addOnItemTouchListener$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnItemTouchListener;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/addWrite<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;",
        ">;+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000122\u0010\u0002\u001a.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u0006 \u0007*\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/addOnItemTouchListener;


# direct methods
.method constructor <init>(Lo/addOnItemTouchListener;)V
    .locals 0

    iput-object p1, p0, Lo/addOnItemTouchListener$getInterfaceDescriptor;->onPostMessage:Lo/addOnItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 50
    check-cast p1, Lo/addWrite;

    .line 1152
    iget-object v0, p0, Lo/addOnItemTouchListener$getInterfaceDescriptor;->onPostMessage:Lo/addOnItemTouchListener;

    .line 2027
    iget-object v1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1152
    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lo/addOnItemTouchListener;->onPostMessage(Lo/addOnItemTouchListener;Ljava/util/List;)V

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 1154
    iget-object v2, p0, Lo/addOnItemTouchListener$getInterfaceDescriptor;->onPostMessage:Lo/addOnItemTouchListener;

    invoke-static {v2}, Lo/addOnItemTouchListener;->onMessageChannelReady(Lo/addOnItemTouchListener;)Lo/resetScroll;

    move-result-object v2

    .line 2032
    iget-object v2, v2, Lo/resetScroll;->onMessageChannelReady:Lo/setActive;

    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 1154
    :goto_0
    check-cast v2, Lo/addWrite;

    if-eqz v2, :cond_1

    .line 3027
    iget-object v2, v2, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1154
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 3043
    :goto_1
    new-instance v3, Lo/addWrite;

    const-string v5, "card_count"

    invoke-direct {v3, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 1155
    iget-object v3, p0, Lo/addOnItemTouchListener$getInterfaceDescriptor;->onPostMessage:Lo/addOnItemTouchListener;

    invoke-static {v3}, Lo/addOnItemTouchListener;->onMessageChannelReady(Lo/addOnItemTouchListener;)Lo/resetScroll;

    move-result-object v3

    .line 4032
    iget-object v3, v3, Lo/resetScroll;->onMessageChannelReady:Lo/setActive;

    check-cast v3, Landroidx/lifecycle/LiveData;

    .line 4320
    iget-object v3, v3, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v3, v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    .line 1155
    :goto_2
    check-cast v3, Lo/addWrite;

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 5027
    iget-object v3, v3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1155
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_5

    .line 6376
    const-class v6, Ljava/util/List;

    check-cast v6, Ljava/lang/reflect/Type;

    new-array v7, v5, [Ljava/lang/reflect/Type;

    const-class v8, Ljava/lang/String;

    check-cast v8, Ljava/lang/reflect/Type;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    .line 6377
    sget-object v6, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v6

    check-cast v2, Ljava/lang/reflect/Type;

    .line 7068
    sget-object v7, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 7098
    invoke-virtual {v6, v2, v7, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v4, "Network.moshi.adapter(listType)"

    .line 6377
    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_4

    .line 6380
    check-cast v3, Ljava/lang/Iterable;

    .line 6398
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/StaggeredGridLayoutManager;

    .line 6381
    instance-of v7, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-eqz v7, :cond_3

    .line 6382
    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    .line 8028
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onPostMessage:Ljava/lang/String;

    .line 6382
    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 6385
    :cond_4
    invoke-virtual {v2, v4}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "adapter.toJson(list)"

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8043
    :cond_5
    new-instance v2, Lo/addWrite;

    const-string v3, "card_list"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    const/4 v2, 0x2

    .line 9028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 9043
    new-instance v3, Lo/addWrite;

    const-string v4, "from_cache"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const-string p1, "pairs"

    .line 1153
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "discover_card_load"

    .line 1153
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
