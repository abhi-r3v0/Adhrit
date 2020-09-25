.class final Lo/onCreateSupportNavigateUpTaskStack$onTransact;
.super Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateSupportNavigateUpTaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onTransact"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1135
    invoke-direct {p0, v0}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;-><init>(B)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/onCreateSupportNavigateUpTaskStack$asBinder;Ljava/lang/Thread;)V
    .locals 0

    .line 1140
    iput-object p2, p1, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->onMessageChannelReady:Ljava/lang/Thread;

    return-void
.end method

.method final ICustomTabsCallback(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;",
            "Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;",
            "Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;",
            ")Z"
        }
    .end annotation

    .line 1161
    monitor-enter p1

    .line 1162
    :try_start_0
    iget-object v0, p1, Lo/onCreateSupportNavigateUpTaskStack;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    if-ne v0, p2, :cond_0

    .line 1163
    iput-object p3, p1, Lo/onCreateSupportNavigateUpTaskStack;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    const/4 p2, 0x1

    .line 1164
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1166
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1167
    monitor-exit p1

    throw p2
.end method

.method final extraCallback(Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)V
    .locals 0

    .line 1145
    iput-object p2, p1, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    return-void
.end method

.method final onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1172
    monitor-enter p1

    .line 1173
    :try_start_0
    iget-object v0, p1, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 1174
    iput-object p3, p1, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1175
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1177
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1178
    monitor-exit p1

    throw p2
.end method

.method final onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            ")Z"
        }
    .end annotation

    .line 1150
    monitor-enter p1

    .line 1151
    :try_start_0
    iget-object v0, p1, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    if-ne v0, p2, :cond_0

    .line 1152
    iput-object p3, p1, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    const/4 p2, 0x1

    .line 1153
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1155
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1156
    monitor-exit p1

    throw p2
.end method
