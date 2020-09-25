.class final synthetic Lo/setSlideFractionListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/setDragState;

.field private final onPostMessage:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Lo/setDragState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/setSlideFractionListener;->onPostMessage:Z

    iput-object p2, p0, Lo/setSlideFractionListener;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/setSlideFractionListener;->onNavigationEvent:Lo/setDragState;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lo/setSlideFractionListener;->onPostMessage:Z

    iget-object v1, p0, Lo/setSlideFractionListener;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/setSlideFractionListener;->onNavigationEvent:Lo/setDragState;

    invoke-static {v0, v1, v2}, Lo/RewardDetails$$Parcelable;->extraCallback(ZLjava/lang/String;Lo/setDragState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
