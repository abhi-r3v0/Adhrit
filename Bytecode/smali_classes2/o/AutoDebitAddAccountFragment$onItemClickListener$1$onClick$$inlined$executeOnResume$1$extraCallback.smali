.class final Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# static fields
.field public static final onMessageChannelReady:Z


# instance fields
.field private extraCallback:Z

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AutoDebitRegisterResponse$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Z

    sput-boolean v0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onNavigationEvent:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/String;J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->extraCallback:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onNavigationEvent:Ljava/util/List;

    new-instance v7, Lo/AutoDebitRegisterResponse$$Parcelable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lo/AutoDebitRegisterResponse$$Parcelable;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Marker added to finished log"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->extraCallback:Z

    if-nez v0, :cond_0

    const-string v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onPostMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"

    invoke-static {v1, v0}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onPostMessage(Ljava/lang/String;)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->extraCallback:Z

    iget-object v1, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-wide v7, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoDebitRegisterResponse$$Parcelable;

    iget-wide v5, v1, Lo/AutoDebitRegisterResponse$$Parcelable;->onMessageChannelReady:J

    iget-object v1, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onNavigationEvent:Ljava/util/List;

    iget-object v7, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoDebitRegisterResponse$$Parcelable;

    iget-wide v7, v1, Lo/AutoDebitRegisterResponse$$Parcelable;->onMessageChannelReady:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v7, v5

    :goto_0
    cmp-long v1, v7, v2

    if-gtz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoDebitRegisterResponse$$Parcelable;

    iget-wide v1, v1, Lo/AutoDebitRegisterResponse$$Parcelable;->onMessageChannelReady:J

    const-string v3, "(%-4d ms) %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p1, v6, v0

    invoke-static {v3, v6}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AutoDebitRegisterResponse$$Parcelable;

    iget-wide v6, v3, Lo/AutoDebitRegisterResponse$$Parcelable;->onMessageChannelReady:J

    const-string v8, "(+%-4d) [%2d] %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v4

    iget-wide v1, v3, Lo/AutoDebitRegisterResponse$$Parcelable;->ICustomTabsCallback:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    iget-object v1, v3, Lo/AutoDebitRegisterResponse$$Parcelable;->onPostMessage:Ljava/lang/String;

    aput-object v1, v9, v5

    invoke-static {v8, v9}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v6

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
