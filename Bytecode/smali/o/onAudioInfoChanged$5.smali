.class final Lo/onAudioInfoChanged$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAudioInfoChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/onAudioInfoChanged;


# direct methods
.method constructor <init>(Lo/onAudioInfoChanged;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/onAudioInfoChanged$5;->extraCallback:Lo/onAudioInfoChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lo/onAudioInfoChanged$5;->extraCallback:Lo/onAudioInfoChanged;

    invoke-static {p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(Lo/onAudioInfoChanged;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lo/onAudioInfoChanged$5;->extraCallback:Lo/onAudioInfoChanged;

    invoke-static {p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(Lo/onAudioInfoChanged;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/onAudioInfoChanged;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
