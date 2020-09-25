.class public final Lo/onAddQueueItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Lo/update$ICustomTabsCallback;

.field public final ICustomTabsCallback$Stub:Z

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsService:Z

.field public final asBinder:Ljava/util/concurrent/Executor;

.field public final asInterface:Lo/setCurrentControllerInfo$onNavigationEvent;

.field public final extraCallback:Landroid/content/Context;

.field public final getInterfaceDescriptor:Ljava/lang/String;

.field public final newSession:Z

.field public final onMessageChannelReady:Lo/setCurrentControllerInfo$ICustomTabsCallback;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setCurrentControllerInfo$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final onRelationshipValidationResult:Ljava/util/concurrent/Executor;

.field public final onTransact:Z

.field public final warmup:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/update$ICustomTabsCallback;Lo/setCurrentControllerInfo$ICustomTabsCallback;Ljava/util/List;ZLo/setCurrentControllerInfo$onNavigationEvent;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lo/update$ICustomTabsCallback;",
            "Lo/setCurrentControllerInfo$ICustomTabsCallback;",
            "Ljava/util/List<",
            "Lo/setCurrentControllerInfo$onPostMessage;",
            ">;Z",
            "Lo/setCurrentControllerInfo$onNavigationEvent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p3, p0, Lo/onAddQueueItem;->ICustomTabsCallback:Lo/update$ICustomTabsCallback;

    .line 242
    iput-object p1, p0, Lo/onAddQueueItem;->extraCallback:Landroid/content/Context;

    .line 243
    iput-object p2, p0, Lo/onAddQueueItem;->onNavigationEvent:Ljava/lang/String;

    .line 244
    iput-object p4, p0, Lo/onAddQueueItem;->onMessageChannelReady:Lo/setCurrentControllerInfo$ICustomTabsCallback;

    .line 245
    iput-object p5, p0, Lo/onAddQueueItem;->onPostMessage:Ljava/util/List;

    .line 246
    iput-boolean p6, p0, Lo/onAddQueueItem;->onTransact:Z

    .line 247
    iput-object p7, p0, Lo/onAddQueueItem;->asInterface:Lo/setCurrentControllerInfo$onNavigationEvent;

    .line 248
    iput-object p8, p0, Lo/onAddQueueItem;->asBinder:Ljava/util/concurrent/Executor;

    .line 249
    iput-object p9, p0, Lo/onAddQueueItem;->onRelationshipValidationResult:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lo/onAddQueueItem;->ICustomTabsCallback$Stub:Z

    .line 251
    iput-boolean p11, p0, Lo/onAddQueueItem;->newSession:Z

    .line 252
    iput-boolean p12, p0, Lo/onAddQueueItem;->ICustomTabsService:Z

    const/4 p1, 0x0

    .line 253
    iput-object p1, p0, Lo/onAddQueueItem;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    .line 254
    iput-object p1, p0, Lo/onAddQueueItem;->getInterfaceDescriptor:Ljava/lang/String;

    .line 255
    iput-object p1, p0, Lo/onAddQueueItem;->warmup:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onPostMessage(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 283
    iget-boolean p2, p0, Lo/onAddQueueItem;->ICustomTabsService:Z

    if-eqz p2, :cond_1

    return v1

    .line 290
    :cond_1
    iget-boolean p2, p0, Lo/onAddQueueItem;->newSession:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lo/onAddQueueItem;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    if-eqz p2, :cond_2

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    return v0

    :cond_3
    return v1
.end method
