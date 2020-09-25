.class final Lo/setPrecomputedText$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPrecomputedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final extraCallback:Ljava/util/concurrent/Executor;

.field final onNavigationEvent:Lo/setOrientation;


# direct methods
.method constructor <init>(Lo/setOrientation;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lo/setPrecomputedText$onMessageChannelReady;->onNavigationEvent:Lo/setOrientation;

    .line 490
    iput-object p2, p0, Lo/setPrecomputedText$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 495
    instance-of v0, p1, Lo/setPrecomputedText$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 496
    check-cast p1, Lo/setPrecomputedText$onMessageChannelReady;

    .line 497
    iget-object v0, p0, Lo/setPrecomputedText$onMessageChannelReady;->onNavigationEvent:Lo/setOrientation;

    iget-object p1, p1, Lo/setPrecomputedText$onMessageChannelReady;->onNavigationEvent:Lo/setOrientation;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 504
    iget-object v0, p0, Lo/setPrecomputedText$onMessageChannelReady;->onNavigationEvent:Lo/setOrientation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
