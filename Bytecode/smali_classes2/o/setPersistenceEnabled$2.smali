.class final Lo/setPersistenceEnabled$2;
.super Lo/getParent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPersistenceEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setPersistenceEnabled;

.field private synthetic onPostMessage:I


# direct methods
.method varargs constructor <init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lo/setPersistenceEnabled$2;->onMessageChannelReady:Lo/setPersistenceEnabled;

    iput p4, p0, Lo/setPersistenceEnabled$2;->onPostMessage:I

    invoke-direct {p0, p2, p3}, Lo/getParent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 845
    iget-object v0, p0, Lo/setPersistenceEnabled$2;->onMessageChannelReady:Lo/setPersistenceEnabled;

    invoke-static {v0}, Lo/setPersistenceEnabled;->asBinder(Lo/setPersistenceEnabled;)Lo/getNode;

    .line 848
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled$2;->onMessageChannelReady:Lo/setPersistenceEnabled;

    iget-object v0, v0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    iget v1, p0, Lo/setPersistenceEnabled$2;->onPostMessage:I

    sget-object v2, Lo/getReferenceFromUrl;->asInterface:Lo/getReferenceFromUrl;

    invoke-interface {v0, v1, v2}, Lo/getReference;->onNavigationEvent(ILo/getReferenceFromUrl;)V

    .line 849
    iget-object v0, p0, Lo/setPersistenceEnabled$2;->onMessageChannelReady:Lo/setPersistenceEnabled;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :try_start_1
    iget-object v1, p0, Lo/setPersistenceEnabled$2;->onMessageChannelReady:Lo/setPersistenceEnabled;

    invoke-static {v1}, Lo/setPersistenceEnabled;->warmup(Lo/setPersistenceEnabled;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lo/setPersistenceEnabled$2;->onPostMessage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 851
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method
