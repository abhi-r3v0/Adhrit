.class public Lo/setImageAssetsFolder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getRepeatCount;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setImageAssetsFolder$extraCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/setPosition;

.field private final onMessageChannelReady:Landroid/graphics/Bitmap$Config;

.field private final onNavigationEvent:Lo/removeUpdateListener;

.field private final onPostMessage:Ljava/util/concurrent/ExecutorService;

.field private final onRelationshipValidationResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lo/setImageAssetsFolder;

    sput-object v0, Lo/setImageAssetsFolder;->extraCallback:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lo/setPosition;Lo/removeUpdateListener;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/setImageAssetsFolder;->ICustomTabsCallback:Lo/setPosition;

    .line 41
    iput-object p2, p0, Lo/setImageAssetsFolder;->onNavigationEvent:Lo/removeUpdateListener;

    .line 42
    iput-object p3, p0, Lo/setImageAssetsFolder;->onMessageChannelReady:Landroid/graphics/Bitmap$Config;

    .line 43
    iput-object p4, p0, Lo/setImageAssetsFolder;->onPostMessage:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/setImageAssetsFolder;->onRelationshipValidationResult:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setImageAssetsFolder;)Landroid/util/SparseArray;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/setImageAssetsFolder;->onRelationshipValidationResult:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/setImageAssetsFolder;)Lo/setPosition;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/setImageAssetsFolder;->ICustomTabsCallback:Lo/setPosition;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/setImageAssetsFolder;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/setImageAssetsFolder;->onMessageChannelReady:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/setImageAssetsFolder;)Lo/removeUpdateListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/setImageAssetsFolder;->onNavigationEvent:Lo/removeUpdateListener;

    return-object p0
.end method

.method static synthetic onPostMessage()Ljava/lang/Class;
    .locals 1

    .line 24
    sget-object v0, Lo/setImageAssetsFolder;->extraCallback:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/addAnimatorListener;Lo/reverseAnimationSpeed;I)Z
    .locals 10

    .line 1077
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p3

    .line 54
    iget-object v7, p0, Lo/setImageAssetsFolder;->onRelationshipValidationResult:Landroid/util/SparseArray;

    monitor-enter v7

    .line 56
    :try_start_0
    iget-object v1, p0, Lo/setImageAssetsFolder;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    .line 57
    sget-object p1, Lo/setImageAssetsFolder;->extraCallback:Ljava/lang/Class;

    const-string p2, "Already scheduled decode job for frame %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    monitor-exit v7

    return v8

    .line 61
    :cond_0
    invoke-interface {p1, p3}, Lo/addAnimatorListener;->ICustomTabsCallback(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    sget-object p1, Lo/setImageAssetsFolder;->extraCallback:Ljava/lang/Class;

    const-string p2, "Frame %d is cached already."

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    monitor-exit v7

    return v8

    .line 65
    :cond_1
    new-instance v9, Lo/setImageAssetsFolder$extraCallback;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lo/setImageAssetsFolder$extraCallback;-><init>(Lo/setImageAssetsFolder;Lo/reverseAnimationSpeed;Lo/addAnimatorListener;II)V

    .line 70
    iget-object p1, p0, Lo/setImageAssetsFolder;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lo/setImageAssetsFolder;->onPostMessage:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 72
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v8

    :catchall_0
    move-exception p1

    monitor-exit v7

    throw p1
.end method
