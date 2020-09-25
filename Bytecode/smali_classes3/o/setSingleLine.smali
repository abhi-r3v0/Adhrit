.class final Lo/setSingleLine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/setCounterTextAppearance;

.field private final synthetic onNavigationEvent:Lo/setCheckedIconResource;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setSingleLine;->onNavigationEvent:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setSingleLine;->onMessageChannelReady:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setSingleLine;->onNavigationEvent:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHint;->requestPostMessageChannel()V

    .line 3
    iget-object v0, p0, Lo/setSingleLine;->onNavigationEvent:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    iget-object v1, p0, Lo/setSingleLine;->onMessageChannelReady:Lo/setCounterTextAppearance;

    .line 5
    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v2

    invoke-virtual {v2}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 6
    invoke-virtual {v0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 7
    iget-object v2, v1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    return-void
.end method
