.class public final Lcom/dreamplug/androidapp/UpiAliasActivity;
.super Lo/asBinder;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J\"\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/UpiAliasActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "checkAndLaunchUpiActivity",
        "",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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

    .line 15
    invoke-direct {p0}, Lo/asBinder;-><init>()V

    return-void
.end method

.method private final ICustomTabsCallback()V
    .locals 5

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    new-instance v1, Landroid/content/Intent;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const-class v4, Lo/setTrackTintList;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 58
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 60
    :cond_1
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f1304b5

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x50

    .line 2168
    invoke-static {p0, v0, v1, v2}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lcom/dreamplug/androidapp/UpiAliasActivity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/dreamplug/androidapp/UpiAliasActivity;->ICustomTabsCallback()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 33
    invoke-super {p0, p1, p2, p3}, Lo/asBinder;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    invoke-static {}, Lo/updateToolbarLogo;->extraCallback()V

    .line 37
    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    invoke-static {}, Lo/updateToolbarLogo;->onMessageChannelReady()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 39
    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    invoke-static {}, Lo/updateToolbarLogo;->onNavigationEvent()V

    .line 40
    invoke-direct {p0}, Lcom/dreamplug/androidapp/UpiAliasActivity;->ICustomTabsCallback()V

    goto :goto_0

    :cond_1
    new-array p1, p3, [Lo/addWrite;

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "result_Code"

    invoke-direct {v1, v2, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p1, v0

    const-string p2, "pairs"

    .line 42
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-static {p3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "lock_screen_failure"

    .line 42
    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    :cond_2
    :goto_0
    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    invoke-static {v0}, Lo/updateToolbarLogo;->ICustomTabsCallback(Z)V

    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lo/asBinder;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object p1, Lo/isInLayout;->onPostMessage:Lo/isResumed;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "property"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object p1, p1, Lo/hasOptionsMenu;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getJsonObjectFrom;

    .line 1020
    invoke-interface {p1}, Lo/getJsonObjectFrom;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p1

    .line 1000
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 24
    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    move-object v0, p0

    check-cast v0, Lo/asBinder;

    new-instance v1, Lcom/dreamplug/androidapp/UpiAliasActivity$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lcom/dreamplug/androidapp/UpiAliasActivity$ICustomTabsCallback;-><init>(Lcom/dreamplug/androidapp/UpiAliasActivity;)V

    check-cast v1, Lo/getServerTime;

    invoke-virtual {p1, v0, v1}, Lo/updateToolbarLogo;->onMessageChannelReady(Lo/asBinder;Lo/getServerTime;)V

    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/dreamplug/androidapp/UpiAliasActivity;->ICustomTabsCallback()V

    return-void
.end method
