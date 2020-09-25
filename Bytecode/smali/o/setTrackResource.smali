.class public final Lo/setTrackResource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setTrackResource$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001-B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010 \u001a\u00020!H\u0002J\u0006\u0010\"\u001a\u00020!J\u0008\u0010#\u001a\u00020\u0005H\u0002J\u0012\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010\u001aJ\u0012\u0010\'\u001a\u0004\u0018\u00010\u001a2\u0008\u0010(\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010)\u001a\u00020\u001a2\u0006\u0010*\u001a\u00020\u0005H\u0002J\u0006\u0010+\u001a\u00020!J\u000e\u0010,\u001a\u00020!2\u0006\u0010*\u001a\u00020\u0005R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR(\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\u00050\u00050\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R*\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u001a0\u0019j\u0008\u0012\u0004\u0012\u00020\u001a`\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006."
    }
    d2 = {
        "Lcom/dreamplug/androidapp/TabMenuConfig;",
        "",
        "()V",
        "networkCall",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "getNetworkCall",
        "()Lcom/dreamplug/network/internals/call/CallRequest;",
        "setNetworkCall",
        "(Lcom/dreamplug/network/internals/call/CallRequest;)V",
        "tabConfigLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "getTabConfigLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setTabConfigLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "tabConfigService",
        "Lcom/dreamplug/fabrik/ui/tabholder/TabConfigService;",
        "getTabConfigService",
        "()Lcom/dreamplug/fabrik/ui/tabholder/TabConfigService;",
        "tabConfigService$delegate",
        "Lkotlin/Lazy;",
        "tabPositionArray",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "getTabPositionArray",
        "()Ljava/util/ArrayList;",
        "setTabPositionArray",
        "(Ljava/util/ArrayList;)V",
        "fetchDataFromServer",
        "",
        "getConfigData",
        "getDefaultTabResponse",
        "getTabItemForId",
        "Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;",
        "bottomTabIdentifier",
        "getTabTagforSubmenu",
        "subMenuIdentifier",
        "getTabsListAttribute",
        "tabConfigResponse",
        "reset",
        "setBottomBarList",
        "Submenu",
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
.field public static final ICustomTabsCallback:Lo/setTrackResource;

.field private static final onMessageChannelReady:Lo/isSameListener;

.field static onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;",
            ">;"
        }
    .end annotation
.end field

.field static onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lo/setTrackResource;

    invoke-direct {v0}, Lo/setTrackResource;-><init>()V

    sput-object v0, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    .line 22
    new-instance v0, Lo/setActive;

    invoke-static {}, Lo/setTrackResource;->onPostMessage()Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/setActive;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/setTrackResource;->onNavigationEvent:Lo/setActive;

    .line 24
    sget-object v0, Lo/setTrackResource$onNavigationEvent;->extraCallback:Lo/setTrackResource$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 24
    sput-object v1, Lo/setTrackResource;->onMessageChannelReady:Lo/isSameListener;

    const-string/jumbo v0, "tab_home"

    const-string/jumbo v1, "tab_cards"

    const-string/jumbo v2, "tab_lifestyle"

    .line 30
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lo/setTrackResource;->onPostMessage:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 90
    sget-object v0, Lo/setTrackResource$onPostMessage;->ICustomTabsCallback:Lo/setTrackResource$onPostMessage;

    .line 6117
    iget-object v0, v0, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 90
    invoke-static {p0, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "home"

    if-nez v0, :cond_7

    invoke-static {p0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 92
    :cond_0
    sget-object v0, Lo/setTrackResource;->onNavigationEvent:Lo/setActive;

    .line 6320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 6321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 92
    :goto_0
    check-cast v0, Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;

    if-eqz v0, :cond_6

    .line 7011
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 93
    check-cast v0, Ljava/lang/Iterable;

    .line 138
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    if-eqz v1, :cond_2

    .line 7027
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->asBinder:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 94
    check-cast v3, Ljava/lang/Iterable;

    .line 139
    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 140
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    .line 7041
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->extraCallback:Ljava/lang/String;

    .line 94
    invoke-static {v4, p0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-ne v3, v5, :cond_2

    .line 8019
    iget-object p0, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->onNavigationEvent:Ljava/lang/String;

    return-object p0

    :cond_6
    return-object v2

    :cond_7
    :goto_2
    return-object v1
.end method

.method public static ICustomTabsCallback()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lo/setTrackResource;->onNavigationEvent:Lo/setActive;

    return-object v0
.end method

.method public static extraCallback()V
    .locals 3

    const-string/jumbo v0, "tab_home"

    const-string/jumbo v1, "tab_cards"

    const-string/jumbo v2, "tab_lifestyle"

    .line 39
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lo/setTrackResource;->onPostMessage:Ljava/util/ArrayList;

    .line 40
    sget-object v0, Lo/setTrackResource;->onNavigationEvent:Lo/setActive;

    invoke-static {}, Lo/setTrackResource;->onPostMessage()Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onMessageChannelReady()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lo/setTrackResource;->onPostMessage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static onNavigationEvent(Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;)Ljava/lang/String;
    .locals 7

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9011
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz p0, :cond_5

    .line 105
    check-cast p0, Ljava/lang/Iterable;

    .line 143
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9027
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->asBinder:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    const-string v4, "_"

    if-eqz v3, :cond_4

    if-eqz v1, :cond_2

    .line 10027
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->asBinder:Ljava/util/List;

    .line 106
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 12027
    :cond_3
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->asBinder:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 109
    check-cast v2, Ljava/lang/Iterable;

    .line 144
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 13019
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->onNavigationEvent:Ljava/lang/String;

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13041
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->extraCallback:Ljava/lang/String;

    .line 110
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 107
    :cond_4
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11019
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->onNavigationEvent:Ljava/lang/String;

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12019
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->onNavigationEvent:Ljava/lang/String;

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "listOfCategories.toString()"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static onPostMessage(Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;
    .locals 4

    .line 84
    sget-object v0, Lo/setTrackResource;->onNavigationEvent:Lo/setActive;

    .line 5320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 84
    :goto_0
    check-cast v0, Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;

    if-eqz v0, :cond_3

    .line 6011
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 85
    check-cast v0, Ljava/lang/Iterable;

    .line 136
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    .line 6019
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->onNavigationEvent:Ljava/lang/String;

    .line 85
    invoke-static {v3, p0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 137
    :cond_2
    check-cast v2, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    :cond_3
    return-object v2
.end method

.method private static onPostMessage()Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;
    .locals 30

    .line 44
    new-instance v0, Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    .line 45
    new-instance v11, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    const-string v3, "home"

    const-string v4, "home"

    const-string v5, "home"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/tabholder/LockConfig;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    aput-object v11, v1, v2

    .line 46
    new-instance v3, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    new-instance v13, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    const-string v7, "my cards"

    const-string v9, "control_farm"

    const-string v8, "control_farm"

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/tabholder/MetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v13, v5, v2

    new-instance v6, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    const-string v15, "benefits"

    const-string v17, "benefits_farm"

    const-string v16, "benefits_farm"

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object v14, v6

    invoke-direct/range {v14 .. v20}, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/tabholder/MetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "elements"

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "$this$asList"

    .line 1076
    invoke-static {v5, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v9, "ArraysUtilJVM.asList(this)"

    .line 1129
    invoke-static {v5, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "cards"

    const-string v14, "cards"

    const-string v15, "cards"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x18

    move-object v12, v3

    move-object/from16 v18, v5

    .line 46
    invoke-direct/range {v12 .. v20}, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/tabholder/LockConfig;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v3, v1, v7

    .line 47
    new-instance v3, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    new-array v5, v4, [Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    new-instance v17, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    const-string/jumbo v11, "rewards"

    const-string/jumbo v13, "win_farm"

    const-string/jumbo v12, "win_farm"

    const/4 v14, 0x0

    const/16 v15, 0x8

    move-object/from16 v10, v17

    invoke-direct/range {v10 .. v16}, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/tabholder/MetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v17, v5, v2

    new-instance v2, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    const-string/jumbo v19, "store"

    const-string v21, "discover_farm"

    const-string v20, "discover_farm"

    const/16 v22, 0x0

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/tabholder/MetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v2, v5, v7

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2076
    invoke-static {v5, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3013
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2129
    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v22, "club"

    const-string v23, "lifestyle"

    const-string v24, "lifestyle"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x18

    const/16 v29, 0x0

    move-object/from16 v21, v3

    move-object/from16 v27, v2

    .line 47
    invoke-direct/range {v21 .. v29}, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/tabholder/LockConfig;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v3, v1, v4

    .line 44
    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3076
    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4013
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3129
    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {v0, v1}, Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 9

    .line 5000
    sget-object v0, Lo/setTrackResource;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecyclerView$LayoutManager$Properties;

    .line 52
    invoke-interface {v0}, Lo/RecyclerView$LayoutManager$Properties;->ICustomTabsCallback()Lo/clearScrap;

    move-result-object v0

    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xf

    invoke-static/range {v2 .. v8}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    new-instance v1, Lo/setTrackResource$onMessageChannelReady;

    invoke-direct {v1}, Lo/setTrackResource$onMessageChannelReady;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
