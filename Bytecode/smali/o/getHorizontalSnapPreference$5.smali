.class final Lo/getHorizontalSnapPreference$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getHorizontalSnapPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/getHorizontalSnapPreference$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getHorizontalSnapPreference$5;

    invoke-direct {v0}, Lo/getHorizontalSnapPreference$5;-><init>()V

    sput-object v0, Lo/getHorizontalSnapPreference$5;->extraCallback:Lo/getHorizontalSnapPreference$5;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 40
    sget-object v0, Lo/getInterpolator;->onNavigationEvent:Lo/getInterpolator;

    .line 41
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 41
    :cond_0
    check-cast v0, Landroid/app/Application;

    const-string v1, "application"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2019
    sput-object v0, Lo/getInterpolator;->extraCallback:Landroid/app/Application;

    .line 3000
    sget-object v0, Lo/getInterpolator;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase;

    .line 2020
    invoke-virtual {v0}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase;->ICustomTabsCallback$Stub()Lo/setDuration;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lo/setDuration;->extraCallback()Ljava/util/List;

    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Iterable;

    .line 126
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;

    .line 43
    sget-object v2, Lo/getHorizontalSnapPreference;->ICustomTabsCallback:Lo/getHorizontalSnapPreference;

    invoke-static {}, Lo/getHorizontalSnapPreference;->onPostMessage()Ljava/util/HashMap;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 3009
    iget-object v3, v1, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->ICustomTabsCallback:Ljava/lang/String;

    .line 3010
    iget-boolean v1, v1, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->onPostMessage:Z

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
