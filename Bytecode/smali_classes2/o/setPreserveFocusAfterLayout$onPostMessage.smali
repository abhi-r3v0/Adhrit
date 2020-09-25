.class public final Lo/setPreserveFocusAfterLayout$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Transaction$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPreserveFocusAfterLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/PullDownMachineConstraintLayout$Companion;",
        "",
        "()V",
        "AUTO_FINISHED_SPEED_LIMIT",
        "",
        "DRAG_FINISHED",
        "",
        "DRAG_ROLLED_BACK",
        "DRAG_SETTLING",
        "DRAG_STARTED",
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
.field private final zza:Lo/submitTask;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/submitTask;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setPreserveFocusAfterLayout$onPostMessage;->zza:Lo/submitTask;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1001
    iget-object v0, p0, Lo/setPreserveFocusAfterLayout$onPostMessage;->zza:Lo/submitTask;

    check-cast p1, Lo/finalizePreviousNativeSession;

    check-cast p2, Lo/removeBackgroundStateChangeListener;

    .line 1002
    new-instance v1, Lo/writeNonFatalEventsTo;

    invoke-direct {v1, v0, p2}, Lo/writeNonFatalEventsTo;-><init>(Lo/writeSessionOS;Lo/removeBackgroundStateChangeListener;)V

    .line 1003
    iput-object v1, v0, Lo/writeSessionOS;->zzh:Lo/writeSessionPartsToSessionFile;

    .line 1004
    iget-boolean p2, v0, Lo/writeSessionOS;->zzu:Z

    if-eqz p2, :cond_0

    .line 1006
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    iget-object p2, v0, Lo/writeSessionOS;->zze:Lo/isRooted;

    .line 1007
    invoke-virtual {p2}, Lo/isRooted;->zze()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zzg(Ljava/lang/String;Lo/getCurrentTimestampSeconds;)V

    return-void

    .line 1009
    :cond_0
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    new-instance p2, Lo/cQ;

    iget-object v1, v0, Lo/writeSessionOS;->zze:Lo/isRooted;

    .line 1010
    invoke-virtual {v1}, Lo/isRooted;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lo/cQ;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 1011
    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Lo/cQ;Lo/getCurrentTimestampSeconds;)V

    return-void
.end method
