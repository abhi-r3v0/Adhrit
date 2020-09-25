.class final Lo/setMediaButtonReceiver$1$3;
.super Lo/MediaControllerCompatApi21;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setMediaButtonReceiver$1;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/setMediaButtonReceiver$1;


# direct methods
.method constructor <init>(Lo/setMediaButtonReceiver$1;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lo/setMediaButtonReceiver$1$3;->this$1:Lo/setMediaButtonReceiver$1;

    invoke-direct {p0}, Lo/MediaControllerCompatApi21;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lo/setMediaButtonReceiver$1$3;->this$1:Lo/setMediaButtonReceiver$1;

    iget-object p1, p1, Lo/setMediaButtonReceiver$1;->this$0:Lo/setMediaButtonReceiver;

    invoke-virtual {p1}, Lo/setMediaButtonReceiver;->onNavigationEvent()V

    return-void
.end method

.method public final onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lo/setMediaButtonReceiver$1$3;->this$1:Lo/setMediaButtonReceiver$1;

    iget-object p1, p1, Lo/setMediaButtonReceiver$1;->this$0:Lo/setMediaButtonReceiver;

    invoke-virtual {p1}, Lo/setMediaButtonReceiver;->extraCallback()V

    return-void
.end method
