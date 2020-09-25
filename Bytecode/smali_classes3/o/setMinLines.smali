.class final synthetic Lo/setMinLines;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/setCounterTextAppearance;

.field private final onMessageChannelReady:Lo/setCheckedIconResource;

.field private final onNavigationEvent:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setMinLines;->onMessageChannelReady:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setMinLines;->extraCallback:Lo/setCounterTextAppearance;

    iput-object p3, p0, Lo/setMinLines;->onNavigationEvent:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/setMinLines;->onMessageChannelReady:Lo/setCheckedIconResource;

    iget-object v1, p0, Lo/setMinLines;->extraCallback:Lo/setCounterTextAppearance;

    iget-object v2, p0, Lo/setMinLines;->onNavigationEvent:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lo/setCheckedIconResource;->onPostMessage(Lo/setCounterTextAppearance;Landroid/os/Bundle;)V

    return-void
.end method
