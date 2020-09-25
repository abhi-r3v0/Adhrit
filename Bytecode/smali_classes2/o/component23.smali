.class public final Lo/component23;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Ljava/lang/Runnable;

.field private final onNavigationEvent:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/component23;->extraCallback:Ljava/lang/Runnable;

    .line 3
    iput p2, p0, Lo/component23;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 5
    iget v0, p0, Lo/component23;->onNavigationEvent:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    iget-object v0, p0, Lo/component23;->extraCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
