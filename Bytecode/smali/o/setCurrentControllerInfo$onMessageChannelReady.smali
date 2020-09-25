.class public final Lo/setCurrentControllerInfo$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCurrentControllerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/setCurrentControllerInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/update$ICustomTabsCallback;

.field private final ICustomTabsCallback$Stub:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final ICustomTabsService:Lo/setCurrentControllerInfo$ICustomTabsCallback;

.field private final asBinder:Ljava/lang/String;

.field private asInterface:Ljava/util/concurrent/Executor;

.field public extraCallback:Z

.field private getInterfaceDescriptor:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/setCurrentControllerInfo$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Ljava/util/concurrent/Executor;

.field public onPostMessage:Z

.field public onRelationshipValidationResult:Z

.field private final onTransact:Landroid/content/Context;

.field private warmup:Lo/setCurrentControllerInfo$onNavigationEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onTransact:Landroid/content/Context;

    .line 571
    iput-object p2, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    .line 572
    iput-object p3, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->asBinder:Ljava/lang/String;

    .line 573
    sget-object p1, Lo/setCurrentControllerInfo$onNavigationEvent;->extraCallback:Lo/setCurrentControllerInfo$onNavigationEvent;

    iput-object p1, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->warmup:Lo/setCurrentControllerInfo$onNavigationEvent;

    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onPostMessage:Z

    .line 575
    new-instance p1, Lo/setCurrentControllerInfo$ICustomTabsCallback;

    invoke-direct {p1}, Lo/setCurrentControllerInfo$ICustomTabsCallback;-><init>()V

    iput-object p1, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsService:Lo/setCurrentControllerInfo$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final varargs ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lo/MediaSessionCompat$MediaSessionImplApi18$1;",
            ")",
            "Lo/setCurrentControllerInfo$onMessageChannelReady<",
            "TT;>;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Set;

    .line 664
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 665
    iget-object v3, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Set;

    iget v4, v2, Lo/MediaSessionCompat$MediaSessionImplApi18$1;->onPostMessage:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v3, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->getInterfaceDescriptor:Ljava/util/Set;

    iget v2, v2, Lo/MediaSessionCompat$MediaSessionImplApi18$1;->extraCallback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsService:Lo/setCurrentControllerInfo$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/setCurrentControllerInfo$ICustomTabsCallback;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)V

    return-object p0
.end method

.method public final extraCallback()Lo/setCurrentControllerInfo;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 888
    iget-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onTransact:Landroid/content/Context;

    if-eqz v1, :cond_7

    .line 892
    iget-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    if-eqz v1, :cond_6

    .line 896
    iget-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->asInterface:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 897
    invoke-static {}, Lo/MediaBrowserCompat$ItemCallback;->onNavigationEvent()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->asInterface:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 898
    :cond_0
    iget-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->asInterface:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    .line 899
    iput-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->asInterface:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 900
    :cond_1
    iget-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_2

    iget-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->asInterface:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    .line 901
    iput-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 918
    :cond_2
    :goto_0
    iget-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback:Lo/update$ICustomTabsCallback;

    if-nez v1, :cond_3

    .line 919
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {v1}, Lo/MediaSessionCompat$MediaSessionImplBase;-><init>()V

    iput-object v1, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback:Lo/update$ICustomTabsCallback;

    .line 935
    :cond_3
    new-instance v1, Lo/onAddQueueItem;

    iget-object v3, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onTransact:Landroid/content/Context;

    iget-object v4, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->asBinder:Ljava/lang/String;

    iget-object v5, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback:Lo/update$ICustomTabsCallback;

    iget-object v6, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsService:Lo/setCurrentControllerInfo$ICustomTabsCallback;

    iget-object v7, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    iget-boolean v8, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->extraCallback:Z

    iget-object v2, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->warmup:Lo/setCurrentControllerInfo$onNavigationEvent;

    .line 1512
    sget-object v9, Lo/setCurrentControllerInfo$onNavigationEvent;->extraCallback:Lo/setCurrentControllerInfo$onNavigationEvent;

    if-eq v2, v9, :cond_4

    :goto_1
    move-object v9, v2

    goto :goto_2

    .line 1515
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v2, v9, :cond_5

    const-string v2, "activity"

    .line 1517
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-eqz v2, :cond_5

    .line 1518
    invoke-static {v2}, Lo/setCurrentControllerInfo$onNavigationEvent;->onPostMessage(Landroid/app/ActivityManager;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1519
    sget-object v2, Lo/setCurrentControllerInfo$onNavigationEvent;->ICustomTabsCallback:Lo/setCurrentControllerInfo$onNavigationEvent;

    goto :goto_1

    .line 1522
    :cond_5
    sget-object v2, Lo/setCurrentControllerInfo$onNavigationEvent;->onMessageChannelReady:Lo/setCurrentControllerInfo$onNavigationEvent;

    goto :goto_1

    .line 943
    :goto_2
    iget-object v10, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iget-object v11, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->asInterface:Ljava/util/concurrent/Executor;

    const/4 v12, 0x0

    iget-boolean v13, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onPostMessage:Z

    iget-boolean v14, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onRelationshipValidationResult:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lo/onAddQueueItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/update$ICustomTabsCallback;Lo/setCurrentControllerInfo$ICustomTabsCallback;Ljava/util/List;ZLo/setCurrentControllerInfo$onNavigationEvent;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 952
    iget-object v2, v0, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    const-string v3, "_Impl"

    invoke-static {v2, v3}, Lo/registerMediaButtonEventReceiver;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setCurrentControllerInfo;

    .line 953
    invoke-virtual {v2, v1}, Lo/setCurrentControllerInfo;->extraCallback(Lo/onAddQueueItem;)V

    return-object v2

    .line 893
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 889
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot provide null context for the database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
