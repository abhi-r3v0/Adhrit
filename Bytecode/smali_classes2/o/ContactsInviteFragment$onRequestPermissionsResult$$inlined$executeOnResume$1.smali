.class public final Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub:J

.field private ICustomTabsCallback$Stub$Proxy:J

.field private ICustomTabsService:J

.field private asBinder:J

.field private asInterface:Z

.field private final extraCallback:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/set$default;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Lo/GreetingCardResponse;

.field private onRelationshipValidationResult:J

.field private onTransact:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lo/getParcel;->asBinder()Lo/GreetingCardResponse;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;-><init>(Lo/GreetingCardResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lo/GreetingCardResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onRelationshipValidationResult:J

    iput-wide v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->asInterface:Z

    iput-wide v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onTransact:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->asBinder:J

    iput-wide v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:J

    iput-wide v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsService:J

    iput-object p1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    iput-object p2, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 6

    iget-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsService:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:J

    iget-object v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {v1, p0}, Lo/GreetingCardResponse;->ICustomTabsCallback(Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V

    :cond_0
    iget-object v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {v1}, Lo/GreetingCardResponse;->ICustomTabsCallback()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback(J)V
    .locals 4

    iget-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsService:J

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    iget-object p1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {p1, p0}, Lo/GreetingCardResponse;->ICustomTabsCallback(Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback()V
    .locals 7

    iget-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsService:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/set$default;

    invoke-virtual {v1}, Lo/set$default;->ICustomTabsCallback()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lo/set$default;->onNavigationEvent()V

    iget-object v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {v1, p0}, Lo/GreetingCardResponse;->ICustomTabsCallback(Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final extraCallback(Lo/setLastItem;)V
    .locals 4

    iget-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:J

    iget-object v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {v3, p1, v1, v2}, Lo/GreetingCardResponse;->onMessageChannelReady(Lo/setLastItem;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady()Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "seq_num"

    iget-object v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slotid"

    iget-object v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ismediation"

    iget-boolean v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->asInterface:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "treq"

    iget-wide v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tresponse"

    iget-wide v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsService:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "timp"

    iget-wide v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tload"

    iget-wide v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onTransact:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pcc"

    iget-wide v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->asBinder:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tfetch"

    iget-wide v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onRelationshipValidationResult:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/set$default;

    invoke-virtual {v4}, Lo/set$default;->onMessageChannelReady()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "tclick"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Z)V
    .locals 6

    iget-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsService:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iput-boolean p1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->asInterface:Z

    iget-object p1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {p1, p0}, Lo/GreetingCardResponse;->ICustomTabsCallback(Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Z)V
    .locals 6

    iget-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsService:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onTransact:J

    if-nez p1, :cond_0

    iput-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:J

    iget-object p1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {p1, p0}, Lo/GreetingCardResponse;->ICustomTabsCallback(Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage()V
    .locals 6

    iget-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsService:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    new-instance v1, Lo/set$default;

    invoke-direct {v1}, Lo/set$default;-><init>()V

    invoke-virtual {v1}, Lo/set$default;->onPostMessage()V

    iget-object v2, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->asBinder:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->asBinder:J

    iget-object v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {v1}, Lo/GreetingCardResponse;->extraCallback()V

    iget-object v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {v1, p0}, Lo/GreetingCardResponse;->ICustomTabsCallback(Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage(J)V
    .locals 6

    iget-object v0, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsService:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iput-wide p1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onRelationshipValidationResult:J

    iget-object p1, p0, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/GreetingCardResponse;

    invoke-virtual {p1, p0}, Lo/GreetingCardResponse;->ICustomTabsCallback(Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
