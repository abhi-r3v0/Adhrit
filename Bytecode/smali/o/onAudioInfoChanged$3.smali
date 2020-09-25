.class final Lo/onAudioInfoChanged$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAudioInfoChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/onAudioInfoChanged;


# direct methods
.method constructor <init>(Lo/onAudioInfoChanged;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lo/onAudioInfoChanged$3;->ICustomTabsCallback:Lo/onAudioInfoChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lo/onAudioInfoChanged$3;->ICustomTabsCallback:Lo/onAudioInfoChanged;

    invoke-static {v0}, Lo/onAudioInfoChanged;->onNavigationEvent(Lo/onAudioInfoChanged;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lo/onAudioInfoChanged$3;->ICustomTabsCallback:Lo/onAudioInfoChanged;

    invoke-static {v1}, Lo/onAudioInfoChanged;->onMessageChannelReady(Lo/onAudioInfoChanged;)Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
