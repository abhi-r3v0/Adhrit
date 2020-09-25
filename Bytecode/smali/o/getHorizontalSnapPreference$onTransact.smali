.class final Lo/getHorizontalSnapPreference$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getHorizontalSnapPreference;->extraCallback(Ljava/lang/String;)V
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


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getHorizontalSnapPreference$onTransact;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 65
    sget-object v0, Lo/getInterpolator;->onNavigationEvent:Lo/getInterpolator;

    .line 66
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 66
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

    .line 67
    new-instance v1, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;

    iget-object v2, p0, Lo/getHorizontalSnapPreference$onTransact;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lo/setDuration;->onNavigationEvent(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;)V

    return-void
.end method
