.class public final Lo/setSubUiVisibilityListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setSubUiVisibilityListener$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\u000c\u001a\u00020\u000b2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010J@\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u00102\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u00102\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017J\u001e\u0010\u0019\u001a\u00020\u000b2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010J\u0016\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u001dJ\u001e\u0010\u001e\u001a\u00020\u000b2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/contacthelper/ContactHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "contactDao",
        "Lcom/dreamplug/contacthelper/db/ContactDao;",
        "mContactFetcher",
        "Lcom/dreamplug/contacthelper/ContactFetcher;",
        "mContext",
        "clear",
        "",
        "delete",
        "entities",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/contacthelper/db/ContactEntity;",
        "Lkotlin/collections/ArrayList;",
        "generateDelta",
        "contacts",
        "syncedContacts",
        "",
        "pull",
        "listener",
        "Lcom/dreamplug/contacthelper/listeners/OnPullCallback;",
        "pullDelta",
        "push",
        "thumbnail",
        "contactId",
        "",
        "Lcom/dreamplug/contacthelper/listeners/OnProfilePicFetchListener;",
        "update",
        "Companion",
        "contact_helper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback;


# instance fields
.field private ICustomTabsCallback:Lo/getTextOn;

.field private final onMessageChannelReady:Lo/setOnScrollChangeListener;

.field private onNavigationEvent:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setSubUiVisibilityListener$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setSubUiVisibilityListener$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/setSubUiVisibilityListener;->extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/setSubUiVisibilityListener;->onNavigationEvent:Landroid/content/Context;

    .line 19
    new-instance p1, Lo/getTextOn;

    invoke-direct {p1}, Lo/getTextOn;-><init>()V

    iput-object p1, p0, Lo/setSubUiVisibilityListener;->ICustomTabsCallback:Lo/getTextOn;

    .line 20
    sget-object p1, Lo/setSmoothScrollingEnabled;->ICustomTabsCallback:Lo/setSmoothScrollingEnabled$extraCallback;

    iget-object v0, p0, Lo/setSubUiVisibilityListener;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lo/subUiVisibilityChanged;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setSmoothScrollingEnabled;

    .line 2000
    iget-object p1, p1, Lo/setSmoothScrollingEnabled;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/contacthelper/db/Database;

    .line 1021
    invoke-virtual {p1}, Lcom/dreamplug/contacthelper/db/Database;->asInterface()Lo/setOnScrollChangeListener;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lo/setSubUiVisibilityListener;->onMessageChannelReady:Lo/setOnScrollChangeListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/setSubUiVisibilityListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9

    .line 2072
    new-instance v0, Ljava/util/HashSet;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2073
    new-instance v1, Ljava/util/HashSet;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2075
    new-instance p1, Ljava/util/HashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2076
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 2078
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2079
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    .line 2137
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setFillViewport;

    .line 2080
    move-object v5, p0

    check-cast v5, Ljava/lang/Iterable;

    .line 2138
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/setFillViewport;

    .line 3022
    iget-object v7, v6, Lo/setFillViewport;->ICustomTabsCallback:Ljava/lang/String;

    .line 4022
    iget-object v8, v4, Lo/setFillViewport;->ICustomTabsCallback:Ljava/lang/String;

    .line 2081
    invoke-static {v7, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2082
    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2087
    :cond_2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2088
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 2089
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 2141
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setFillViewport;

    const/4 v3, 0x1

    .line 4030
    iput-boolean v3, v1, Lo/setFillViewport;->asInterface:Z

    goto :goto_1

    .line 2093
    :cond_3
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 2094
    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 2095
    new-instance p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/setSubUiVisibilityListener;)Lo/getTextOn;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/setSubUiVisibilityListener;->ICustomTabsCallback:Lo/getTextOn;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/setSubUiVisibilityListener;)Lo/setOnScrollChangeListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/setSubUiVisibilityListener;->onMessageChannelReady:Lo/setOnScrollChangeListener;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/setSubUiVisibilityListener;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/setSubUiVisibilityListener;->onNavigationEvent:Landroid/content/Context;

    return-object p0
.end method
