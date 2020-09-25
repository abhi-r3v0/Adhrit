.class public final Lo/getHorizontalSnapPreference$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getHorizontalSnapPreference;
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


# instance fields
.field final synthetic onNavigationEvent:Lo/onDisconnectSetValue;


# direct methods
.method public constructor <init>(Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lo/getHorizontalSnapPreference$ICustomTabsCallback;->onNavigationEvent:Lo/onDisconnectSetValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 49
    sget-object v0, Lo/getInterpolator;->onNavigationEvent:Lo/getInterpolator;

    .line 50
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 50
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

    .line 51
    invoke-virtual {v0}, Lo/setDuration;->extraCallback()Ljava/util/List;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lo/getHorizontalSnapPreference$ICustomTabsCallback$1;

    invoke-direct {v2, p0, v0}, Lo/getHorizontalSnapPreference$ICustomTabsCallback$1;-><init>(Lo/getHorizontalSnapPreference$ICustomTabsCallback;Ljava/util/List;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
