.class final Lo/setDefaultDragDirs$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setDefaultDragDirs;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/String;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setDefaultDragDirs;


# direct methods
.method constructor <init>(Lo/setDefaultDragDirs;)V
    .locals 0

    iput-object p1, p0, Lo/setDefaultDragDirs$asInterface;->onMessageChannelReady:Lo/setDefaultDragDirs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 51
    check-cast p1, Ljava/lang/String;

    .line 1084
    iget-object v0, p0, Lo/setDefaultDragDirs$asInterface;->onMessageChannelReady:Lo/setDefaultDragDirs;

    .line 2054
    iget-object v0, v0, Lo/setDefaultDragDirs;->onMessageChannelReady:Landroid/widget/EditText;

    const-string v1, "otp"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1084
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    const-string v0, "code"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 1085
    iget-object v2, p0, Lo/setDefaultDragDirs$asInterface;->onMessageChannelReady:Lo/setDefaultDragDirs;

    .line 3054
    iget-object v2, v2, Lo/setDefaultDragDirs;->onMessageChannelReady:Landroid/widget/EditText;

    if-nez v2, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1085
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v0, p0, Lo/setDefaultDragDirs$asInterface;->onMessageChannelReady:Lo/setDefaultDragDirs;

    .line 4054
    iget-object v0, v0, Lo/setDefaultDragDirs;->onMessageChannelReady:Landroid/widget/EditText;

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1086
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1087
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/setDefaultDragDirs$asInterface;->onMessageChannelReady:Lo/setDefaultDragDirs;

    invoke-static {v0}, Lo/setDefaultDragDirs;->extraCallback(Lo/setDefaultDragDirs;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
