.class public final Lo/ActionJsonAdapter;
.super Lo/setScale;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ActionJsonAdapter$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setScale<",
        "Lo/AFHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/CampaignDatabase_Impl;

.field private final extraCallback:Lo/CoroutineWorker;

.field private final onMessageChannelReady:Lo/Action;

.field private onNavigationEvent:Landroid/os/Handler;

.field private final onPostMessage:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/CoroutineWorker;Lo/CampaignDatabase_Impl;Lo/Action;Lo/setPivotX;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CoroutineWorker;",
            "Lo/CampaignDatabase_Impl;",
            "Lo/Action;",
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lo/setScale;-><init>()V

    .line 70
    iput-object p1, p0, Lo/ActionJsonAdapter;->extraCallback:Lo/CoroutineWorker;

    .line 71
    iput-object p2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 72
    iput-object p3, p0, Lo/ActionJsonAdapter;->onMessageChannelReady:Lo/Action;

    .line 74
    iput-object p4, p0, Lo/ActionJsonAdapter;->onPostMessage:Lo/setPivotX;

    return-void
.end method

.method private ICustomTabsCallback(I)V
    .locals 2

    .line 179
    invoke-direct {p0}, Lo/ActionJsonAdapter;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lo/ActionJsonAdapter;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 181
    iput v1, v0, Landroid/os/Message;->what:I

    .line 182
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 183
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    iget-object p1, p0, Lo/ActionJsonAdapter;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lo/ActionJsonAdapter;->onMessageChannelReady:Lo/Action;

    iget-object v1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    invoke-interface {v0, v1, p1}, Lo/Action;->onMessageChannelReady(Lo/CampaignDatabase_Impl;I)V

    return-void
.end method

.method private declared-synchronized onNavigationEvent()V
    .locals 3

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lo/ActionJsonAdapter;->onNavigationEvent:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 205
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImagePerfControllerListener2Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    new-instance v1, Lo/ActionJsonAdapter$onMessageChannelReady;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lo/ActionJsonAdapter;->onMessageChannelReady:Lo/Action;

    invoke-direct {v1, v0, v2}, Lo/ActionJsonAdapter$onMessageChannelReady;-><init>(Landroid/os/Looper;Lo/Action;)V

    iput-object v1, p0, Lo/ActionJsonAdapter;->onNavigationEvent:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onNavigationEvent(I)V
    .locals 2

    .line 191
    invoke-direct {p0}, Lo/ActionJsonAdapter;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lo/ActionJsonAdapter;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 193
    iput v1, v0, Landroid/os/Message;->what:I

    .line 194
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 195
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    iget-object p1, p0, Lo/ActionJsonAdapter;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 199
    :cond_0
    iget-object p1, p0, Lo/ActionJsonAdapter;->onMessageChannelReady:Lo/Action;

    iget-object v0, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    invoke-interface {p1, v0}, Lo/Action;->onMessageChannelReady(Lo/CampaignDatabase_Impl;)V

    return-void
.end method

.method private onPostMessage()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lo/ActionJsonAdapter;->onPostMessage:Lo/setPivotX;

    invoke-interface {v0}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lo/ActionJsonAdapter;->onNavigationEvent:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 215
    invoke-direct {p0}, Lo/ActionJsonAdapter;->onNavigationEvent()V

    :cond_0
    return v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
    .locals 3

    .line 28
    check-cast p2, Lo/AFHelper;

    .line 14107
    iget-object v0, p0, Lo/ActionJsonAdapter;->extraCallback:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    .line 14109
    iget-object v2, p3, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 14111
    iget-object v2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 14273
    iput-object p3, v2, Lo/CampaignDatabase_Impl;->IPostMessageService$Stub$Proxy:Lo/setScaleType$extraCallback;

    .line 14113
    iget-object p3, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 15161
    iput-wide v0, p3, Lo/CampaignDatabase_Impl;->warmup:J

    .line 14114
    iget-object p3, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 15177
    iput-wide v0, p3, Lo/CampaignDatabase_Impl;->getInterfaceDescriptor:J

    .line 14115
    iget-object p3, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 16128
    iput-object p1, p3, Lo/CampaignDatabase_Impl;->extraCallback:Ljava/lang/String;

    .line 14116
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 16201
    iput-object p2, p1, Lo/CampaignDatabase_Impl;->onMessageChannelReady:Lo/AFHelper;

    const/4 p1, 0x3

    .line 14118
    invoke-direct {p0, p1}, Lo/ActionJsonAdapter;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;Lo/setScaleType$extraCallback;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lo/ActionJsonAdapter;->extraCallback:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    .line 125
    iget-object v2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 4273
    iput-object p3, v2, Lo/CampaignDatabase_Impl;->IPostMessageService$Stub$Proxy:Lo/setScaleType$extraCallback;

    .line 127
    iget-object p3, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 5165
    iput-wide v0, p3, Lo/CampaignDatabase_Impl;->ICustomTabsService:J

    .line 128
    iget-object p3, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 6128
    iput-object p1, p3, Lo/CampaignDatabase_Impl;->extraCallback:Ljava/lang/String;

    .line 129
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 6213
    iput-object p2, p1, Lo/CampaignDatabase_Impl;->ICustomTabsService$Stub:Ljava/lang/Throwable;

    const/4 p1, 0x5

    .line 131
    invoke-direct {p0, p1}, Lo/ActionJsonAdapter;->ICustomTabsCallback(I)V

    .line 7172
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    const/4 p2, 0x2

    .line 7217
    iput p2, p1, Lo/CampaignDatabase_Impl;->ICustomTabsService$Stub$Proxy:I

    .line 7173
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 8185
    iput-wide v0, p1, Lo/CampaignDatabase_Impl;->IPostMessageService$Stub:J

    .line 7175
    invoke-direct {p0, p2}, Lo/ActionJsonAdapter;->onNavigationEvent(I)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lo/setScaleType$extraCallback;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lo/ActionJsonAdapter;->extraCallback:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    .line 140
    iget-object v2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 8273
    iput-object p2, v2, Lo/CampaignDatabase_Impl;->IPostMessageService$Stub$Proxy:Lo/setScaleType$extraCallback;

    .line 142
    iget-object p2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 9124
    iget p2, p2, Lo/CampaignDatabase_Impl;->IPostMessageService:I

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    .line 146
    iget-object p2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 9169
    iput-wide v0, p2, Lo/CampaignDatabase_Impl;->newSession:J

    .line 147
    iget-object p2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 10128
    iput-object p1, p2, Lo/CampaignDatabase_Impl;->extraCallback:Ljava/lang/String;

    const/4 p1, 0x4

    .line 149
    invoke-direct {p0, p1}, Lo/ActionJsonAdapter;->ICustomTabsCallback(I)V

    .line 10172
    :cond_0
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    const/4 p2, 0x2

    .line 10217
    iput p2, p1, Lo/CampaignDatabase_Impl;->ICustomTabsService$Stub$Proxy:I

    .line 10173
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 11185
    iput-wide v0, p1, Lo/CampaignDatabase_Impl;->IPostMessageService$Stub:J

    .line 10175
    invoke-direct {p0, p2}, Lo/ActionJsonAdapter;->onNavigationEvent(I)V

    return-void
.end method

.method public final synthetic onPostMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 28
    check-cast p2, Lo/AFHelper;

    .line 12095
    iget-object v0, p0, Lo/ActionJsonAdapter;->extraCallback:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    .line 12097
    iget-object v2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 12157
    iput-wide v0, v2, Lo/CampaignDatabase_Impl;->asInterface:J

    .line 12098
    iget-object v0, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 13128
    iput-object p1, v0, Lo/CampaignDatabase_Impl;->extraCallback:Ljava/lang/String;

    .line 12099
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 13201
    iput-object p2, p1, Lo/CampaignDatabase_Impl;->onMessageChannelReady:Lo/AFHelper;

    const/4 p1, 0x2

    .line 12101
    invoke-direct {p0, p1}, Lo/ActionJsonAdapter;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lo/ActionJsonAdapter;->extraCallback:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    .line 81
    iget-object v2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    invoke-virtual {v2}, Lo/CampaignDatabase_Impl;->onMessageChannelReady()V

    .line 83
    iget-object v2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 1153
    iput-wide v0, v2, Lo/CampaignDatabase_Impl;->ICustomTabsCallback$Stub:J

    .line 84
    iget-object v2, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 2128
    iput-object p1, v2, Lo/CampaignDatabase_Impl;->extraCallback:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 2149
    iput-object p2, p1, Lo/CampaignDatabase_Impl;->onNavigationEvent:Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 2273
    iput-object p3, p1, Lo/CampaignDatabase_Impl;->IPostMessageService$Stub$Proxy:Lo/setScaleType$extraCallback;

    const/4 p1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lo/ActionJsonAdapter;->ICustomTabsCallback(I)V

    .line 3164
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    const/4 p2, 0x1

    .line 3217
    iput p2, p1, Lo/CampaignDatabase_Impl;->ICustomTabsService$Stub$Proxy:I

    .line 3165
    iget-object p1, p0, Lo/ActionJsonAdapter;->ICustomTabsCallback:Lo/CampaignDatabase_Impl;

    .line 4181
    iput-wide v0, p1, Lo/CampaignDatabase_Impl;->validateRelationship:J

    .line 3167
    invoke-direct {p0, p2}, Lo/ActionJsonAdapter;->onNavigationEvent(I)V

    return-void
.end method
