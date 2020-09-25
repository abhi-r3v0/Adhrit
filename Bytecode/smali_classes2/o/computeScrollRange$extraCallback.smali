.class public final Lo/computeScrollRange$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeScrollRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullDownFragment$Companion;",
        "",
        "()V",
        "ANIM_END_FRAME",
        "",
        "ANIM_START_FRAME",
        "LOADING_END_FRAME",
        "LOADING_START_FRAME",
        "NO_POSITION",
        "getInstance",
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullDownFragment;",
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
.field public final ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

.field public final extraCallback:I

.field public final onMessageChannelReady:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILo/setSmoothScrollbarEnabled$onMessageChannelReady;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/computeScrollRange$extraCallback;->extraCallback:I

    iput p2, p0, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iput-object p3, p0, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    return-void
.end method
