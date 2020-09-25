.class final Lo/getHorizontalSnapPreference$ICustomTabsCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getHorizontalSnapPreference$ICustomTabsCallback;->run()V
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
.field private synthetic ICustomTabsCallback:Ljava/util/List;

.field private synthetic onMessageChannelReady:Lo/getHorizontalSnapPreference$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getHorizontalSnapPreference$ICustomTabsCallback;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/getHorizontalSnapPreference$ICustomTabsCallback$1;->onMessageChannelReady:Lo/getHorizontalSnapPreference$ICustomTabsCallback;

    iput-object p2, p0, Lo/getHorizontalSnapPreference$ICustomTabsCallback$1;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lo/getHorizontalSnapPreference$ICustomTabsCallback$1;->onMessageChannelReady:Lo/getHorizontalSnapPreference$ICustomTabsCallback;

    iget-object v0, v0, Lo/getHorizontalSnapPreference$ICustomTabsCallback;->onNavigationEvent:Lo/onDisconnectSetValue;

    iget-object v1, p0, Lo/getHorizontalSnapPreference$ICustomTabsCallback$1;->ICustomTabsCallback:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
