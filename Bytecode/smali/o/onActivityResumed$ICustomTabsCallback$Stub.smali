.class public final Lo/onActivityResumed$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityResumed;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field final synthetic onNavigationEvent:Lo/onActivityResumed;


# direct methods
.method constructor <init>(Lo/onActivityResumed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onActivityResumed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 1

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    instance-of p3, p2, Lo/onActivityPrePaused;

    if-eqz p3, :cond_3

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x468dd0f7

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "invite"

    .line 309
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 310
    iget-object p1, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onActivityResumed;

    invoke-static {p1}, Lo/onActivityResumed;->onTransact(Lo/onActivityResumed;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onActivityResumed;

    invoke-static {p1}, Lo/onActivityResumed;->extraCallback(Lo/onActivityResumed;)Lo/onActivityResumed$onNavigationEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1345
    iget-object p1, p1, Lo/onActivityResumed$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 312
    iget-object p3, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onActivityResumed;

    check-cast p2, Lo/onActivityPrePaused;

    .line 2037
    iget-object p2, p2, Lo/onActivityPrePaused;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;

    .line 312
    invoke-static {p3, p1, p2}, Lo/onActivityResumed;->onMessageChannelReady(Lo/onActivityResumed;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;)V

    :cond_1
    return-void

    .line 316
    :cond_2
    iget-object p1, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onActivityResumed;

    invoke-static {p1}, Lo/onActivityResumed;->ICustomTabsCallback$Stub(Lo/onActivityResumed;)Lo/setCompatVectorFromResourcesEnabled;

    move-result-object p1

    .line 3025
    iget-object p1, p1, Lo/setCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 316
    iget-object p3, p0, Lo/onActivityResumed$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onActivityResumed;

    check-cast p3, Lo/toLegacyStreamType;

    new-instance v0, Lo/onActivityResumed$ICustomTabsCallback$Stub$extraCallback;

    invoke-direct {v0, p0, p2}, Lo/onActivityResumed$ICustomTabsCallback$Stub$extraCallback;-><init>(Lo/onActivityResumed$ICustomTabsCallback$Stub;Lo/StaggeredGridLayoutManager;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p3, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    :cond_3
    :goto_0
    return-void
.end method
