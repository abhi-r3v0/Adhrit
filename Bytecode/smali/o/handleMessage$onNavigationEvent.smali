.class final Lo/handleMessage$onNavigationEvent;
.super Lo/RemoteActionCompatParcelizer$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/handleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/handleMessage;


# direct methods
.method constructor <init>(Lo/handleMessage;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lo/handleMessage$onNavigationEvent;->onNavigationEvent:Lo/handleMessage;

    invoke-direct {p0}, Lo/RemoteActionCompatParcelizer$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/sendCustomAction;
    .locals 1

    .line 805
    iget-object v0, p0, Lo/handleMessage$onNavigationEvent;->onNavigationEvent:Lo/handleMessage;

    iget-object v0, v0, Lo/handleMessage;->ICustomTabsCallback$Stub$Proxy:Lo/handleMessage$extraCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/handleMessage$onNavigationEvent;->onNavigationEvent:Lo/handleMessage;

    iget-object v0, v0, Lo/handleMessage;->ICustomTabsCallback$Stub$Proxy:Lo/handleMessage$extraCallback;

    invoke-virtual {v0}, Lo/getRoot;->onNavigationEvent()Lo/getServiceComponent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
