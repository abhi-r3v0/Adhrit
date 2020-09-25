.class final Lo/onAudioInfoChanged$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAudioInfoChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/onAudioInfoChanged;


# direct methods
.method constructor <init>(Lo/onAudioInfoChanged;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lo/onAudioInfoChanged$4;->onNavigationEvent:Lo/onAudioInfoChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lo/onAudioInfoChanged$4;->onNavigationEvent:Lo/onAudioInfoChanged;

    invoke-static {p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(Lo/onAudioInfoChanged;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lo/onAudioInfoChanged$4;->onNavigationEvent:Lo/onAudioInfoChanged;

    invoke-static {p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(Lo/onAudioInfoChanged;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/onAudioInfoChanged;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
