.class final Lo/restart$extraCallback;
.super Ljava/util/concurrent/FutureTask;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/restart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lo/getRepo;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lo/restart$extraCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/getRepo;


# direct methods
.method public constructor <init>(Lo/getRepo;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lo/restart$extraCallback;->onNavigationEvent:Lo/getRepo;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 92
    check-cast p1, Lo/restart$extraCallback;

    .line 1103
    iget-object v0, p0, Lo/restart$extraCallback;->onNavigationEvent:Lo/getRepo;

    .line 1394
    iget-object v0, v0, Lo/getRepo;->warmup:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 1104
    iget-object v1, p1, Lo/restart$extraCallback;->onNavigationEvent:Lo/getRepo;

    .line 2394
    iget-object v1, v1, Lo/getRepo;->warmup:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    if-ne v0, v1, :cond_0

    .line 1108
    iget-object v0, p0, Lo/restart$extraCallback;->onNavigationEvent:Lo/getRepo;

    iget v0, v0, Lo/getRepo;->onNavigationEvent:I

    iget-object p1, p1, Lo/restart$extraCallback;->onNavigationEvent:Lo/getRepo;

    iget p1, p1, Lo/getRepo;->onNavigationEvent:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method
