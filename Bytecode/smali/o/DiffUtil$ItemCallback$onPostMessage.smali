.class public final Lo/DiffUtil$ItemCallback$onPostMessage;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DiffUtil$ItemCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/fileUpload/UploadFilesBottomSheet$endProgress$endAnimationListener$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/DiffUtil$ItemCallback;


# direct methods
.method constructor <init>(Lo/DiffUtil$ItemCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lo/DiffUtil$ItemCallback$onPostMessage;->onNavigationEvent:Lo/DiffUtil$ItemCallback;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onPostMessage;->onNavigationEvent:Lo/DiffUtil$ItemCallback;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 227
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onPostMessage;->onNavigationEvent:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->asBinder(Lo/DiffUtil$ItemCallback;)Lo/DiffUtil$ItemCallback$extraCallback;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1292
    iget-object p1, p1, Lo/DiffUtil$ItemCallback$extraCallback;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 228
    sget-object p1, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onPostMessage;->onNavigationEvent:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->asBinder(Lo/DiffUtil$ItemCallback;)Lo/DiffUtil$ItemCallback$extraCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2292
    iget-object v0, p1, Lo/DiffUtil$ItemCallback$extraCallback;->onPostMessage:Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_2

    .line 228
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-static {v0}, Lo/getTextOff;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
