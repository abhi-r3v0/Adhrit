.class public abstract Lo/getConnectionURL;
.super Lo/access$2800;
.source ""

# interfaces
.implements Lo/applyServerOverwrite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/access$2800;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()Lo/hasCompleteView;
    .locals 1

    .line 24
    invoke-static {p0}, Lo/applyEmulatorSettings;->onMessageChannelReady(Lo/getConnectionURL;)Lo/applyServerOverwrite;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lo/getConnectionURL;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onTransact()Lo/applyServerOverwrite$extraCallback;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/getConnectionURL;->asInterface()Lo/applyUserOverwrite;

    move-result-object v0

    check-cast v0, Lo/applyServerOverwrite;

    invoke-interface {v0}, Lo/applyServerOverwrite;->onTransact()Lo/applyServerOverwrite$extraCallback;

    move-result-object v0

    return-object v0
.end method
