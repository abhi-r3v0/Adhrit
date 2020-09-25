.class public abstract Lo/stopListening;
.super Lo/access$1802;
.source ""

# interfaces
.implements Lo/getCompleteView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/access$1802;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()Lo/hasCompleteView;
    .locals 1

    .line 25
    invoke-static {p0}, Lo/applyEmulatorSettings;->onNavigationEvent(Lo/stopListening;)Lo/getCompleteView;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/stopListening;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onTransact()Lo/applyServerOverwrite$extraCallback;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lo/stopListening;->asInterface()Lo/applyUserOverwrite;

    move-result-object v0

    check-cast v0, Lo/getCompleteView;

    invoke-interface {v0}, Lo/getCompleteView;->onTransact()Lo/applyServerOverwrite$extraCallback;

    move-result-object v0

    return-object v0
.end method
