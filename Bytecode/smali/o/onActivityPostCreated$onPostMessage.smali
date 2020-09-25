.class public final Lo/onActivityPostCreated$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setChildInsets;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onActivityPostCreated;
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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/manager/ContactBookManager$syncDelta$1",
        "Lcom/dreamplug/contacthelper/listeners/OnPullCallback;",
        "onPermissionMissing",
        "",
        "permission",
        "",
        "onReady",
        "entities",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/contacthelper/db/ContactEntity;",
        "Lkotlin/collections/ArrayList;",
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
.field final synthetic ICustomTabsCallback:Lo/ReflectiveGenericLifecycleObserver;


# direct methods
.method public constructor <init>(Lo/ReflectiveGenericLifecycleObserver;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/onActivityPostCreated$onPostMessage;->ICustomTabsCallback:Lo/ReflectiveGenericLifecycleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    const-string v0, "permission"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contact_invite"

    const-string v1, "permission missing on sync"

    .line 31
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lo/onActivityPostCreated$onPostMessage;->ICustomTabsCallback:Lo/ReflectiveGenericLifecycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/ReflectiveGenericLifecycleObserver;->onPostMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/setFillViewport;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync ready called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lo/writeStringNoTag;

    invoke-direct {v1}, Lo/writeStringNoTag;-><init>()V

    if-nez p1, :cond_0

    .line 2616
    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    invoke-virtual {v1, v2}, Lo/writeStringNoTag;->onMessageChannelReady(Lo/writeEnumNoTag;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2618
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lo/writeStringNoTag;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact_invite"

    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 38
    check-cast p1, Ljava/lang/Iterable;

    const-string v0, "$this$chunked"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x32

    .line 3134
    invoke-static {p1, v0, v0}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/lang/Iterable;II)Ljava/util/List;

    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    if-ltz v0, :cond_1

    check-cast v2, Ljava/util/List;

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "batches "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v4, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    invoke-static {v4}, Lo/onActivityPostCreated;->onPostMessage(Lo/onActivityPostCreated;)Lo/onActivityPreCreated;

    move-result-object v4

    invoke-static {v2}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v4, v2}, Lo/onActivityPreCreated;->onMessageChannelReady(Ljava/util/List;)Lo/clearScrap;

    move-result-object v2

    new-instance v4, Lo/onActivityPostCreated$onPostMessage$onNavigationEvent;

    invoke-direct {v4, v0, p0}, Lo/onActivityPostCreated$onPostMessage$onNavigationEvent;-><init>(ILo/onActivityPostCreated$onPostMessage;)V

    check-cast v4, Lo/getScrapOrCachedViewForId;

    invoke-interface {v2, v4}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    move v0, v3

    goto :goto_1

    .line 3441
    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    return-void

    .line 63
    :cond_3
    iget-object p1, p0, Lo/onActivityPostCreated$onPostMessage;->ICustomTabsCallback:Lo/ReflectiveGenericLifecycleObserver;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lo/ReflectiveGenericLifecycleObserver;->extraCallback()V

    :cond_4
    return-void
.end method
