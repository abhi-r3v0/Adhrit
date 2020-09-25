.class public final Lo/onActivityResumed$ICustomTabsCallback$Stub$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityResumed$ICustomTabsCallback$Stub;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onItemClickListener$1$onClick$2",
        "Landroidx/lifecycle/Observer;",
        "",
        "onChanged",
        "",
        "message",
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
.field private synthetic extraCallback:Lo/onActivityResumed$ICustomTabsCallback$Stub;

.field private synthetic onPostMessage:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/onActivityResumed$ICustomTabsCallback$Stub;Lo/StaggeredGridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StaggeredGridLayoutManager;",
            ")V"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub$extraCallback;->extraCallback:Lo/onActivityResumed$ICustomTabsCallback$Stub;

    iput-object p2, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub$extraCallback;->onPostMessage:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 316
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1319
    iget-object v0, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub$extraCallback;->extraCallback:Lo/onActivityResumed$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/onActivityResumed$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onActivityResumed;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    sget-object v2, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 2320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 1319
    :goto_0
    check-cast v2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    if-eqz v2, :cond_1

    .line 3024
    iget-object v4, v2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->onTransact:Ljava/lang/String;

    .line 1319
    :cond_1
    iget-object v2, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub$extraCallback;->onPostMessage:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lo/onActivityPrePaused;

    .line 3037
    iget-object v2, v2, Lo/onActivityPrePaused;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;

    .line 4012
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;->onNavigationEvent:Ljava/lang/String;

    .line 1319
    invoke-static {v0, p1, v1, v4, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1320
    :cond_2
    iget-object p1, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub$extraCallback;->extraCallback:Lo/onActivityResumed$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/onActivityResumed$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onActivityResumed;

    invoke-static {p1}, Lo/onActivityResumed;->ICustomTabsCallback$Stub(Lo/onActivityResumed;)Lo/setCompatVectorFromResourcesEnabled;

    move-result-object p1

    .line 4025
    iget-object p1, p1, Lo/setCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 1320
    move-object v0, p0

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    :cond_3
    return-void
.end method
