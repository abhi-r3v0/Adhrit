.class final synthetic Lo/InstructionsJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onMessageChannelReady:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Lo/SuggestedAmount;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/InstructionsJsonAdapter;->onMessageChannelReady:Lo/SuggestedAmount;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/InstructionsJsonAdapter;->onMessageChannelReady:Lo/SuggestedAmount;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    return-void
.end method
