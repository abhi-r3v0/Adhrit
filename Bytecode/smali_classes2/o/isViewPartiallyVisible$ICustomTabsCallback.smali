.class final Lo/isViewPartiallyVisible$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isViewPartiallyVisible;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/onAdapterChanged;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/fabrik/ui/qr/QrViewModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/isViewPartiallyVisible;


# direct methods
.method constructor <init>(Lo/isViewPartiallyVisible;)V
    .locals 0

    iput-object p1, p0, Lo/isViewPartiallyVisible$ICustomTabsCallback;->onNavigationEvent:Lo/isViewPartiallyVisible;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1025
    iget-object v0, p0, Lo/isViewPartiallyVisible$ICustomTabsCallback;->onNavigationEvent:Lo/isViewPartiallyVisible;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).get(T::class.java)"

    if-eqz v0, :cond_0

    check-cast v0, Lo/removeOnActiveChangeListener;

    .line 1099
    new-instance v2, Lo/setMetadata;

    invoke-direct {v2, v0}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class v0, Lo/onAdapterChanged;

    invoke-virtual {v2, v0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/onAdapterChanged;

    if-nez v0, :cond_2

    .line 1025
    :cond_0
    iget-object v0, p0, Lo/isViewPartiallyVisible$ICustomTabsCallback;->onNavigationEvent:Lo/isViewPartiallyVisible;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v2, "activity!!"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/removeOnActiveChangeListener;

    .line 1100
    new-instance v2, Lo/setMetadata;

    invoke-direct {v2, v0}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class v0, Lo/onAdapterChanged;

    invoke-virtual {v2, v0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/onAdapterChanged;

    :cond_2
    return-object v0
.end method
