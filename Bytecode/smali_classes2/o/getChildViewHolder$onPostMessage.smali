.class public final Lo/getChildViewHolder$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Transaction$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildViewHolder;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/widget/LuckyNumberDigitView$Companion;",
        "",
        "()V",
        "DEFAULT_VISIBLE_ITEMS",
        "",
        "ITEM_OFFSET_PERCENT",
        "PADDING",
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
.field private final zza:Lo/getExecutor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getExecutor;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getChildViewHolder$onPostMessage;->zza:Lo/getExecutor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1001
    iget-object v0, p0, Lo/getChildViewHolder$onPostMessage;->zza:Lo/getExecutor;

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

    iget-object p2, v0, Lo/getExecutor;->zza:Lo/setJwtAuthEnabled;

    .line 1007
    invoke-virtual {p2}, Lo/setJwtAuthEnabled;->onNavigationEvent()Ljava/lang/String;

    move-result-object p2

    iget-object v1, v0, Lo/getExecutor;->zza:Lo/setJwtAuthEnabled;

    .line 1008
    invoke-virtual {v1}, Lo/setJwtAuthEnabled;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 1009
    invoke-interface {p1, p2, v1, v0}, Lo/doWriteNonFatal;->zzc(Ljava/lang/String;Ljava/lang/String;Lo/getCurrentTimestampSeconds;)V

    return-void

    .line 1011
    :cond_0
    invoke-interface {p1}, Lo/finalizePreviousNativeSession;->zza()Lo/doWriteNonFatal;

    move-result-object p1

    iget-object p2, v0, Lo/getExecutor;->zza:Lo/setJwtAuthEnabled;

    iget-object v0, v0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 1012
    invoke-interface {p1, p2, v0}, Lo/doWriteNonFatal;->zza(Lo/setJwtAuthEnabled;Lo/getCurrentTimestampSeconds;)V

    return-void
.end method
