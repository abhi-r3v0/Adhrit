.class final Lo/SwipeDismissBehavior;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/SwipeDismissBehavior;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback(Lo/SwipeDismissBehavior;)Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lo/SwipeDismissBehavior;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method
