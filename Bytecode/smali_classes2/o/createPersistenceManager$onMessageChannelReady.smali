.class final Lo/createPersistenceManager$onMessageChannelReady;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/createPersistenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final extraCallback:Lo/createPersistenceManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lo/createPersistenceManager;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    iput-object p2, p0, Lo/createPersistenceManager$onMessageChannelReady;->extraCallback:Lo/createPersistenceManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 153
    sget-object v0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v1, Lo/createPersistenceManager$onMessageChannelReady$1;

    invoke-direct {v1, p1}, Lo/createPersistenceManager$onMessageChannelReady$1;-><init>(Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lo/createPersistenceManager$onMessageChannelReady;->extraCallback:Lo/createPersistenceManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 3092
    iget v1, v0, Lo/createPersistenceManager;->ICustomTabsService:I

    add-int/2addr v1, v3

    iput v1, v0, Lo/createPersistenceManager;->ICustomTabsService:I

    .line 3093
    iget-wide v1, v0, Lo/createPersistenceManager;->extraCallback:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lo/createPersistenceManager;->extraCallback:J

    .line 3094
    iget p1, v0, Lo/createPersistenceManager;->ICustomTabsService:I

    iget-wide v1, v0, Lo/createPersistenceManager;->extraCallback:J

    int-to-long v3, p1

    .line 3123
    div-long/2addr v1, v3

    .line 3094
    iput-wide v1, v0, Lo/createPersistenceManager;->onRelationshipValidationResult:J

    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lo/createPersistenceManager$onMessageChannelReady;->extraCallback:Lo/createPersistenceManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    .line 2104
    iget p1, v0, Lo/createPersistenceManager;->newSession:I

    add-int/2addr p1, v3

    iput p1, v0, Lo/createPersistenceManager;->newSession:I

    .line 2105
    iget-wide v3, v0, Lo/createPersistenceManager;->ICustomTabsCallback$Stub:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lo/createPersistenceManager;->ICustomTabsCallback$Stub:J

    .line 2106
    iget p1, v0, Lo/createPersistenceManager;->warmup:I

    iget-wide v1, v0, Lo/createPersistenceManager;->ICustomTabsCallback$Stub:J

    int-to-long v3, p1

    .line 2123
    div-long/2addr v1, v3

    .line 2106
    iput-wide v1, v0, Lo/createPersistenceManager;->asBinder:J

    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lo/createPersistenceManager$onMessageChannelReady;->extraCallback:Lo/createPersistenceManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    .line 1098
    iget p1, v0, Lo/createPersistenceManager;->warmup:I

    add-int/2addr p1, v3

    iput p1, v0, Lo/createPersistenceManager;->warmup:I

    .line 1099
    iget-wide v3, v0, Lo/createPersistenceManager;->onTransact:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lo/createPersistenceManager;->onTransact:J

    .line 1100
    iget p1, v0, Lo/createPersistenceManager;->warmup:I

    iget-wide v1, v0, Lo/createPersistenceManager;->onTransact:J

    int-to-long v3, p1

    .line 1123
    div-long/2addr v1, v3

    .line 1100
    iput-wide v1, v0, Lo/createPersistenceManager;->asInterface:J

    return-void

    .line 141
    :cond_3
    iget-object p1, p0, Lo/createPersistenceManager$onMessageChannelReady;->extraCallback:Lo/createPersistenceManager;

    .line 1088
    iget-wide v3, p1, Lo/createPersistenceManager;->onNavigationEvent:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Lo/createPersistenceManager;->onNavigationEvent:J

    return-void

    .line 138
    :cond_4
    iget-object p1, p0, Lo/createPersistenceManager$onMessageChannelReady;->extraCallback:Lo/createPersistenceManager;

    .line 1084
    iget-wide v3, p1, Lo/createPersistenceManager;->onMessageChannelReady:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Lo/createPersistenceManager;->onMessageChannelReady:J

    return-void
.end method
