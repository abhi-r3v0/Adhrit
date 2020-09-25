.class public final Lo/hitCount;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0002J\u001c\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreResManager;",
        "",
        "()V",
        "fetchToCache",
        "",
        "context",
        "Landroid/content/Context;",
        "asset",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;",
        "prefetch",
        "displayList",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final onNavigationEvent(Landroid/app/Activity;I)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x4000000

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const-string/jumbo v1, "window"

    const-string/jumbo v2, "window.decorView"

    if-eqz p1, :cond_1

    .line 54
    check-cast p0, Landroid/content/Context;

    const v3, 0x7f0601f7

    invoke-static {p0, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_3

    or-int/lit16 p0, p0, 0x2000

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_2

    or-int/lit8 p0, p0, 0x10

    .line 63
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 71
    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public static onPostMessage(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1095
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "image"

    .line 1030
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->extraCallback:Ljava/lang/String;

    goto :goto_0

    .line 2093
    :cond_0
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->onNavigationEvent:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "win_prefetch"

    .line 1036
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-static {}, Lo/CombineContinuationsWorker;->ICustomTabsCallback()Lo/weakContext;

    move-result-object v0

    invoke-static {p1}, Lo/getHostPrefix;->onNavigationEvent(Ljava/lang/String;)Lo/getHostPrefix;

    move-result-object p1

    .line 2451
    sget-object v1, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    invoke-virtual {v0, p1, p0, v1}, Lo/weakContext;->extraCallback(Lo/getHostPrefix;Ljava/lang/Object;Lo/getInstallVersion;)Lo/WorkDatabase;

    :cond_1
    return-void
.end method
