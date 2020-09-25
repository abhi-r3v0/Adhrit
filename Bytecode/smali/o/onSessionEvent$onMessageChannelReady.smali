.class final Lo/onSessionEvent$onMessageChannelReady;
.super Lo/postToHandler;
.source ""

# interfaces
.implements Lo/removeOnActiveChangeListener;
.implements Lo/onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSessionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postToHandler<",
        "Lo/onSessionEvent;",
        ">;",
        "Lo/removeOnActiveChangeListener;",
        "Lo/onMessageChannelReady;"
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/onSessionEvent;


# direct methods
.method public constructor <init>(Lo/onSessionEvent;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    .line 871
    invoke-direct {p0, p1}, Lo/postToHandler;-><init>(Lo/onSessionEvent;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 904
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v0, p0

    .line 940
    iget-object v1, v0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lo/onSessionEvent;->startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 981
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;
    .locals 1

    .line 881
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    iget-object v0, v0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 893
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Lo/onNavigationEvent;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final getViewModelStore()Lo/setRatingType;
    .locals 1

    .line 887
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Lo/onNavigationEvent;->getViewModelStore()Lo/setRatingType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1915
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    return-object v0
.end method

.method public final onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 932
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/onSessionEvent;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onMessageChannelReady(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 1

    .line 947
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0, p1, p2, p3}, Lo/onSessionEvent;->requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 1

    .line 976
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 920
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Lo/onSessionEvent;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public final onNavigationEvent(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 970
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0, p1}, Lo/onSessionEvent;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 899
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lo/onSessionEvent;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Z
    .locals 1

    .line 953
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-static {v0, p1}, Lo/getTitle;->onNavigationEvent(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage()Landroid/view/LayoutInflater;
    .locals 2

    .line 910
    iget-object v0, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lo/onSessionEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method
