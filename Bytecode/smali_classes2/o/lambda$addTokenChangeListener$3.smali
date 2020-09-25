.class public final Lo/lambda$addTokenChangeListener$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doTransaction;


# instance fields
.field private ICustomTabsCallback:I

.field private asBinder:I

.field private extraCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:I

.field private onRelationshipValidationResult:I


# direct methods
.method private constructor <init>(I)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 47
    iput p1, p0, Lo/lambda$addTokenChangeListener$3;->onPostMessage:I

    .line 48
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lo/lambda$addTokenChangeListener$3;->onNavigationEvent:Ljava/util/LinkedHashMap;

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max size must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lo/saveUserOverwrite;->ICustomTabsCallback(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lo/lambda$addTokenChangeListener$3;-><init>(I)V

    return-void
.end method

.method private onPostMessage(I)V
    .locals 3

    .line 91
    :goto_0
    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lo/lambda$addTokenChangeListener$3;->onNavigationEvent:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I

    if-nez v0, :cond_3

    .line 97
    :cond_0
    iget v0, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lo/lambda$addTokenChangeListener$3;->onNavigationEvent:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    iget-object v0, p0, Lo/lambda$addTokenChangeListener$3;->onNavigationEvent:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 104
    iget-object v2, p0, Lo/lambda$addTokenChangeListener$3;->onNavigationEvent:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget v1, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I

    invoke-static {v0}, Lo/saveUserOverwrite;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I

    .line 106
    iget v0, p0, Lo/lambda$addTokenChangeListener$3;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/lambda$addTokenChangeListener$3;->ICustomTabsCallback:I

    .line 107
    monitor-exit p0

    goto :goto_0

    .line 98
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized extraCallback()I
    .locals 1

    monitor-enter p0

    .line 121
    :try_start_0
    iget v0, p0, Lo/lambda$addTokenChangeListener$3;->onPostMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady()I
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget v0, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_1

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lo/lambda$addTokenChangeListener$3;->onNavigationEvent:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 60
    iget v0, p0, Lo/lambda$addTokenChangeListener$3;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/lambda$addTokenChangeListener$3;->asBinder:I

    .line 61
    monitor-exit p0

    return-object p1

    .line 63
    :cond_0
    iget p1, p0, Lo/lambda$addTokenChangeListener$3;->onRelationshipValidationResult:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/lambda$addTokenChangeListener$3;->onRelationshipValidationResult:I

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget v0, p0, Lo/lambda$addTokenChangeListener$3;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/lambda$addTokenChangeListener$3;->extraCallback:I

    .line 77
    iget v0, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I

    invoke-static {p2}, Lo/saveUserOverwrite;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I

    .line 78
    iget-object v0, p0, Lo/lambda$addTokenChangeListener$3;->onNavigationEvent:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 80
    iget p2, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I

    invoke-static {p1}, Lo/saveUserOverwrite;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lo/lambda$addTokenChangeListener$3;->onMessageChannelReady:I

    .line 82
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget p1, p0, Lo/lambda$addTokenChangeListener$3;->onPostMessage:I

    invoke-direct {p0, p1}, Lo/lambda$addTokenChangeListener$3;->onPostMessage(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0

    throw p1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || bitmap == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
