.class public abstract Lo/access$2008;
.super Lo/access$1802;
.source ""

# interfaces
.implements Lo/applyUserMerge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/access$1802;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()Lo/hasCompleteView;
    .locals 1

    .line 24
    invoke-static {p0}, Lo/applyEmulatorSettings;->onPostMessage(Lo/access$2008;)Lo/applyUserMerge;

    move-result-object v0

    return-object v0
.end method

.method public final asBinder()Lo/removeAllWrites$ICustomTabsCallback;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/access$2008;->asInterface()Lo/applyUserOverwrite;

    move-result-object v0

    check-cast v0, Lo/applyUserMerge;

    invoke-interface {v0}, Lo/applyUserMerge;->asBinder()Lo/removeAllWrites$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lo/access$2008;->onTransact()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
