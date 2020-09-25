.class final synthetic Lo/getBureau;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onMessageChannelReady:Ljava/lang/Runnable;

.field private final onPostMessage:Lo/getDobGiven;


# direct methods
.method constructor <init>(Lo/getDobGiven;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getBureau;->onPostMessage:Lo/getDobGiven;

    iput-object p2, p0, Lo/getBureau;->onMessageChannelReady:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/getBureau;->onPostMessage:Lo/getDobGiven;

    iget-object v1, p0, Lo/getBureau;->onMessageChannelReady:Ljava/lang/Runnable;

    sget-object v2, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v3, Lo/setDobGiven;

    invoke-direct {v3, v0, v1}, Lo/setDobGiven;-><init>(Lo/getDobGiven;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
