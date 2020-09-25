.class public final Lo/access$1402;
.super Lo/access$2008;
.source ""


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/getQueryViews;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/access$2008;-><init>()V

    .line 16
    iput-object p1, p0, Lo/access$1402;->onNavigationEvent:Lo/getQueryViews;

    .line 17
    iput-object p2, p0, Lo/access$1402;->onPostMessage:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lo/access$1402;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/access$1402;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final h_()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/access$1402;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/getQueryViews;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/access$1402;->onNavigationEvent:Lo/getQueryViews;

    return-object v0
.end method

.method public final onTransact()Ljava/lang/Object;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lo/access$2008;->asBinder()Lo/removeAllWrites$ICustomTabsCallback;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/removeAllWrites$ICustomTabsCallback;->ICustomTabsCallback([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
