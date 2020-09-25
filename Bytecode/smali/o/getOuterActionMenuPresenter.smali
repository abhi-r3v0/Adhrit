.class public final Lo/getOuterActionMenuPresenter;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/WebViewActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "unHandledBackPress",
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

    .line 14
    invoke-direct {p0}, Lo/asBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 5

    .line 51
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const v1, 0x7f0b09a8

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 52
    instance-of v1, v0, Lo/createScroller;

    if-eqz v1, :cond_0

    .line 53
    check-cast v0, Lo/createScroller;

    invoke-interface {v0}, Lo/createScroller;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3063
    :cond_0
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string/jumbo v1, "supportFragmentManager!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3686
    iget-object v1, v0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v0, v0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 3064
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4571
    :cond_3
    new-instance v1, Lo/requestExtraBinder$onMessageChannelReady;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    return-void

    .line 3066
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 16
    invoke-super {p0, p1}, Lo/asBinder;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e0026

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ENDPOINT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    sget-object v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    new-instance v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1d

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0b09a8

    if-nez p1, :cond_1

    .line 24
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1464
    :cond_0
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const/4 p1, 0x0

    const/4 v3, 0x1

    .line 2189
    invoke-virtual {v2, v1, v0, p1, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 33
    check-cast v0, Lo/getSubtitleTextView;

    .line 35
    sget-object p1, Lo/animateThumbToCheckedState;->extraCallback:Lo/animateThumbToCheckedState;

    move-object p1, p0

    check-cast p1, Lo/onSessionEvent;

    invoke-static {p1}, Lo/animateThumbToCheckedState;->extraCallback(Lo/onSessionEvent;)V

    .line 37
    sget-object p1, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    move-object v1, p0

    check-cast v1, Lo/toLegacyStreamType;

    new-instance v2, Lo/getOuterActionMenuPresenter$onPostMessage;

    invoke-direct {v2, v0}, Lo/getOuterActionMenuPresenter$onPostMessage;-><init>(Lo/getSubtitleTextView;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    .line 33
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.androidapp.ui.WebViewI"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
