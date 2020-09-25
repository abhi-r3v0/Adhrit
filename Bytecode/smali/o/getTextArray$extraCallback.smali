.class final Lo/getTextArray$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTextArray;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/getTitleMarginStart;",
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
        "Lcom/dreamplug/androidapp/gating/EligibilityViewModel;",
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
.field private synthetic ICustomTabsCallback:Lo/getTextArray;


# direct methods
.method constructor <init>(Lo/getTextArray;)V
    .locals 0

    iput-object p1, p0, Lo/getTextArray$extraCallback;->ICustomTabsCallback:Lo/getTextArray;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1044
    iget-object v0, p0, Lo/getTextArray$extraCallback;->ICustomTabsCallback:Lo/getTextArray;

    .line 1251
    new-instance v1, Lo/setMetadata;

    invoke-direct {v1, v0}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class v0, Lo/getTitleMarginStart;

    invoke-virtual {v1, v0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    check-cast v0, Lo/getTitleMarginStart;

    .line 1045
    iget-object v2, p0, Lo/getTextArray$extraCallback;->ICustomTabsCallback:Lo/getTextArray;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lo/removeOnActiveChangeListener;

    .line 1252
    new-instance v3, Lo/setMetadata;

    invoke-direct {v3, v2}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class v2, Lo/appendViewToAllSpans$extraCallback;

    invoke-virtual {v3, v2}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v2

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    check-cast v2, Lo/appendViewToAllSpans$extraCallback;

    const-string v1, "<set-?>"

    .line 1046
    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2027
    iput-object v2, v0, Lo/getTitleMarginStart;->asInterface:Lo/appendViewToAllSpans$extraCallback;

    return-object v0
.end method
