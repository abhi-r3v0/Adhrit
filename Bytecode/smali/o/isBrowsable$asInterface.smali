.class final Lo/isBrowsable$asInterface;
.super Lo/isBrowsable$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isBrowsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "asInterface"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1143
    invoke-direct {p0, v0}, Lo/isBrowsable$onMessageChannelReady;-><init>(B)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/isBrowsable;Lo/isBrowsable$onNavigationEvent;Lo/isBrowsable$onNavigationEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;",
            "Lo/isBrowsable$onNavigationEvent;",
            "Lo/isBrowsable$onNavigationEvent;",
            ")Z"
        }
    .end annotation

    .line 1169
    monitor-enter p1

    .line 1170
    :try_start_0
    iget-object v0, p1, Lo/isBrowsable;->extraCallback:Lo/isBrowsable$onNavigationEvent;

    if-ne v0, p2, :cond_0

    .line 1171
    iput-object p3, p1, Lo/isBrowsable;->extraCallback:Lo/isBrowsable$onNavigationEvent;

    const/4 p2, 0x1

    .line 1172
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1174
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1175
    monitor-exit p1

    throw p2
.end method

.method final extraCallback(Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)V
    .locals 0

    .line 1153
    iput-object p2, p1, Lo/isBrowsable$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isBrowsable$ICustomTabsCallback$Stub;

    return-void
.end method

.method final extraCallback(Lo/isBrowsable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1180
    monitor-enter p1

    .line 1181
    :try_start_0
    iget-object v0, p1, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 1182
    iput-object p3, p1, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1183
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1185
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1186
    monitor-exit p1

    throw p2
.end method

.method final extraCallback(Lo/isBrowsable;Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            ")Z"
        }
    .end annotation

    .line 1158
    monitor-enter p1

    .line 1159
    :try_start_0
    iget-object v0, p1, Lo/isBrowsable;->onPostMessage:Lo/isBrowsable$ICustomTabsCallback$Stub;

    if-ne v0, p2, :cond_0

    .line 1160
    iput-object p3, p1, Lo/isBrowsable;->onPostMessage:Lo/isBrowsable$ICustomTabsCallback$Stub;

    const/4 p2, 0x1

    .line 1161
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1163
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1164
    monitor-exit p1

    throw p2
.end method

.method final onMessageChannelReady(Lo/isBrowsable$ICustomTabsCallback$Stub;Ljava/lang/Thread;)V
    .locals 0

    .line 1148
    iput-object p2, p1, Lo/isBrowsable$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/lang/Thread;

    return-void
.end method
