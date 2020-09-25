.class public Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/SoLoader$Api14Utils;,
        Lcom/facebook/soloader/SoLoader$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static volatile ICustomTabsCallback:I

.field private static ICustomTabsCallback$Stub:Lo/І;

.field private static ICustomTabsCallback$Stub$Proxy:I

.field private static final asBinder:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static newSession:Z

.field public static onMessageChannelReady:Lo/AppsFlyerLibCore$5;

.field public static final onNavigationEvent:Z

.field private static onPostMessage:[Lo/AppsFlyerLibCore$4;

.field private static onRelationshipValidationResult:[Lo/onBecameBackground;

.field private static final onTransact:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    .line 94
    sput-object v0, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;

    const/4 v0, 0x0

    .line 97
    sput v0, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback:I

    .line 114
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->onTransact:Ljava/util/HashSet;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->asInterface:Ljava/util/Map;

    .line 123
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 124
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/facebook/soloader/SoLoader;->asBinder:Ljava/util/Set;

    .line 173
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 178
    :catch_0
    :cond_0
    sput-boolean v0, Lcom/facebook/soloader/SoLoader;->onNavigationEvent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback()I
    .locals 2

    .line 338
    sget-object v0, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 340
    :try_start_0
    sget v0, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback$Stub$Proxy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 345
    :goto_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 346
    throw v0
.end method

.method private static extraCallback(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    const-string v0, " result: "

    .line 810
    sget-object v1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 812
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v2, "couldn\'t find DSO to load: "

    const-string v3, "SoLoader"

    if-eqz v1, :cond_f

    .line 817
    sget-object v1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    .line 824
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 828
    :goto_0
    sget-boolean v6, Lcom/facebook/soloader/SoLoader;->onNavigationEvent:Z

    if-eqz v6, :cond_1

    const-string v6, "SoLoader.loadLibrary["

    const-string v7, "]"

    .line 829
    invoke-static {v6, p0, v7}, Lcom/facebook/soloader/Api18TraceUtils;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x3

    .line 834
    :try_start_1
    sget-object v7, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-nez v7, :cond_4

    .line 836
    :try_start_2
    sget-object v9, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 837
    sget-object v9, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;

    aget-object v9, v9, v8

    .line 838
    invoke-virtual {v9, p0, p1, p2}, Lo/AppsFlyerLibCore$4;->onPostMessage(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 839
    sget-object v9, Lcom/facebook/soloader/SoLoader;->onRelationshipValidationResult:[Lo/onBecameBackground;

    if-eqz v9, :cond_3

    const-string v8, "Trying backup SoSource for "

    .line 841
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-object v8, Lcom/facebook/soloader/SoLoader;->onRelationshipValidationResult:[Lo/onBecameBackground;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 843
    invoke-virtual {v11, p0}, Lo/onBecameBackground;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v11, p0, p1, p2}, Lo/AppsFlyerLibCore$4;->onPostMessage(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v11, v1, :cond_2

    move v7, v11

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    move v4, v7

    .line 854
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 855
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 854
    :cond_4
    :goto_3
    :try_start_4
    sget-object p1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 859
    sget-boolean p1, Lcom/facebook/soloader/SoLoader;->onNavigationEvent:Z

    if-eqz p1, :cond_5

    .line 860
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->onNavigationEvent()V

    :cond_5
    if-eqz v5, :cond_6

    .line 864
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_6
    if-eqz v7, :cond_7

    if-ne v7, v6, :cond_c

    .line 868
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    sget-object p0, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 880
    :goto_4
    sget-object p0, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;

    array-length p0, p0

    if-ge v4, p0, :cond_8

    const-string p0, "\n\tSoSource "

    .line 881
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 883
    :cond_8
    sget-object p0, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback$Stub:Lo/І;

    if-eqz p0, :cond_9

    .line 884
    invoke-virtual {p0}, Lo/І;->onPostMessage()Landroid/content/Context;

    move-result-object p0

    .line 3083
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "\n\tNative lib dir: "

    .line 887
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 889
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :cond_9
    sget-object p0, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 893
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 895
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    move v4, v7

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 859
    :goto_5
    sget-boolean v1, Lcom/facebook/soloader/SoLoader;->onNavigationEvent:Z

    if-eqz v1, :cond_a

    .line 860
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->onNavigationEvent()V

    :cond_a
    if-eqz v5, :cond_b

    .line 864
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_b
    if-eqz v4, :cond_d

    if-ne v4, v6, :cond_c

    goto :goto_6

    :cond_c
    return-void

    .line 868
    :cond_d
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    .line 872
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_e
    const-string v1, " caused by: "

    .line 874
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 893
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 895
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 813
    :cond_f
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not load: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because no SO source exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 817
    sget-object p1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 818
    throw p0
.end method

.method private static declared-synchronized extraCallback(Lo/AppsFlyerLibCore$5;)V
    .locals 10

    const-class p0, Lcom/facebook/soloader/SoLoader;

    monitor-enter p0

    .line 355
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 356
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->onPostMessage()Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 361
    invoke-static {}, Lcom/facebook/soloader/SoLoader$Api14Utils;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_2

    move-object v6, v2

    goto :goto_3

    :cond_2
    const-string v2, ":"

    .line 2907
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2908
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2909
    array-length v7, v2

    :goto_2
    if-ge v0, v7, :cond_4

    aget-object v8, v2, v0

    const-string v9, "!"

    .line 2910
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2913
    invoke-virtual {v6, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v0, ":"

    .line 2916
    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 364
    :goto_3
    new-instance v7, Lcom/facebook/soloader/SoLoader$4;

    move-object v0, v7

    move-object v2, v3

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/soloader/SoLoader$4;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runtime;Ljava/lang/reflect/Method;)V

    sput-object v7, Lcom/facebook/soloader/SoLoader;->onMessageChannelReady:Lo/AppsFlyerLibCore$5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static extraCallback(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 592
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;

    if-nez v0, :cond_3

    const-string v0, "http://www.android.com/"

    const-string v1, "java.vendor.url"

    .line 596
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2936
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2937
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SoLoader.init() not yet called"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 601
    :cond_1
    const-class p1, Lcom/facebook/soloader/SoLoader;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 602
    :try_start_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->onTransact:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 607
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 610
    :cond_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    sget-object p0, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception p0

    .line 611
    :try_start_2
    monitor-exit p1

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 615
    :cond_3
    :goto_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 630
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 629
    invoke-static {v0, p0, v1, p1}, Lcom/facebook/soloader/SoLoader;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :catchall_1
    move-exception p0

    .line 615
    sget-object p1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 616
    throw p0
.end method

.method private static extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .locals 8

    .line 686
    const-class v0, Lcom/facebook/soloader/SoLoader;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->asBinder:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 692
    :cond_0
    monitor-enter v0

    .line 693
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->onTransact:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    .line 696
    monitor-exit v0

    return v2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 700
    :goto_0
    sget-object v4, Lcom/facebook/soloader/SoLoader;->asInterface:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 701
    sget-object v4, Lcom/facebook/soloader/SoLoader;->asInterface:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 703
    :cond_3
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 704
    sget-object v5, Lcom/facebook/soloader/SoLoader;->asInterface:Ljava/util/Map;

    invoke-interface {v5, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 708
    monitor-enter v4

    if-nez v1, :cond_7

    .line 710
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 711
    :try_start_2
    sget-object v5, Lcom/facebook/soloader/SoLoader;->onTransact:Ljava/util/HashSet;

    invoke-virtual {v5, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p2, :cond_4

    .line 715
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v4

    return v2

    :cond_4
    const/4 v1, 0x1

    .line 720
    :cond_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v1, :cond_7

    :try_start_4
    const-string v5, "SoLoader"

    const-string v6, "About to load: "

    .line 724
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {p0, p3, p4}, Lcom/facebook/soloader/SoLoader;->extraCallback(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 734
    :try_start_5
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    const-string p4, "SoLoader"

    const-string v5, "Loaded: "

    .line 735
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    sget-object p4, Lcom/facebook/soloader/SoLoader;->onTransact:Ljava/util/HashSet;

    invoke-virtual {p4, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 737
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_7
    monitor-exit v0

    throw p0

    :catch_0
    move-exception p0

    .line 727
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string/jumbo p2, "unexpected e_machine:"

    .line 728
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string/jumbo p2, "unexpected e_machine:"

    .line 729
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 730
    new-instance p2, Lcom/facebook/soloader/SoLoader$onMessageChannelReady;

    invoke-direct {p2, p0, p1}, Lcom/facebook/soloader/SoLoader$onMessageChannelReady;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    .line 732
    :cond_6
    throw p0

    :catchall_1
    move-exception p0

    .line 720
    monitor-exit v0

    throw p0

    :cond_7
    :goto_2
    and-int/lit8 p3, p3, 0x10

    if-nez p3, :cond_b

    .line 743
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    sget-object p3, Lcom/facebook/soloader/SoLoader;->asBinder:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 p3, 0x1

    goto :goto_3

    :cond_8
    const/4 p3, 0x0

    :goto_3
    if-eqz p2, :cond_b

    if-nez p3, :cond_b

    .line 745
    sget-boolean p2, Lcom/facebook/soloader/SoLoader;->onNavigationEvent:Z

    if-eqz p2, :cond_9

    const-string p2, "MergedSoMapping.invokeJniOnload["

    const-string p3, "]"

    .line 746
    invoke-static {p2, p1, p3}, Lcom/facebook/soloader/Api18TraceUtils;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_9
    :try_start_8
    const-string p2, "SoLoader"

    .line 749
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "About to merge: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " / "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unknown library: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p2

    .line 770
    :try_start_9
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Failed to call JNI_OnLoad from \'"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', which has been merged into \'"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'.  See comment for details."

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 778
    :goto_4
    :try_start_a
    sget-boolean p1, Lcom/facebook/soloader/SoLoader;->onNavigationEvent:Z

    if-eqz p1, :cond_a

    .line 779
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->onNavigationEvent()V

    .line 781
    :cond_a
    throw p0

    .line 784
    :cond_b
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v1, :cond_c

    return v3

    :cond_c
    return v2

    :catchall_3
    move-exception p0

    monitor-exit v4

    throw p0

    :catchall_4
    move-exception p0

    .line 706
    monitor-exit v0

    throw p0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "init exiting"

    const-string v2, "SoLoader"

    .line 1196
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    and-int/lit8 v4, p1, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 1456
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1198
    :goto_0
    sput-boolean v4, Lcom/facebook/soloader/SoLoader;->newSession:Z

    const/4 v4, 0x0

    .line 1199
    invoke-static {v4}, Lcom/facebook/soloader/SoLoader;->extraCallback(Lo/AppsFlyerLibCore$5;)V

    .line 2220
    sget-object v7, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2222
    :try_start_1
    sget-object v7, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;

    if-nez v7, :cond_b

    const-string v7, "init start"

    .line 2223
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    sput p1, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback$Stub$Proxy:I

    .line 2226
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "LD_LIBRARY_PATH"

    .line 2232
    invoke-static {v8}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 2235
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->onPostMessage()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "/vendor/lib64:/system/lib64"

    goto :goto_1

    :cond_1
    const-string v8, "/vendor/lib:/system/lib"

    :cond_2
    :goto_1
    const-string v9, ":"

    .line 2238
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    const-string v12, "adding system library source: "

    .line 2242
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2244
    new-instance v11, Lo/AppsFlyerLibCore$1;

    const/4 v13, 0x2

    invoke-direct {v11, v12, v13}, Lo/AppsFlyerLibCore$1;-><init>(Ljava/io/File;I)V

    invoke-virtual {v7, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_9

    and-int/lit8 v8, p1, 0x1

    const-string v9, "lib-main"

    if-eqz v8, :cond_4

    .line 2260
    :try_start_2
    sput-object v4, Lcom/facebook/soloader/SoLoader;->onRelationshipValidationResult:[Lo/onBecameBackground;

    const-string v4, "adding exo package source: lib-main"

    .line 2261
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    new-instance v4, Lo/ӏ;

    invoke-direct {v4, v0, v9}, Lo/ӏ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v4}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 2265
    :cond_4
    sget-boolean v8, Lcom/facebook/soloader/SoLoader;->newSession:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_4

    .line 2276
    :cond_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-gt v8, v10, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    .line 2280
    :goto_3
    new-instance v10, Lo/І;

    invoke-direct {v10, v0, v8}, Lo/І;-><init>(Landroid/content/Context;I)V

    sput-object v10, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback$Stub:Lo/І;

    .line 2281
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "adding application source: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback$Stub:Lo/І;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    sget-object v8, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback$Stub:Lo/І;

    invoke-virtual {v7, v6, v8}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    const/4 v8, 0x1

    .line 2285
    :goto_4
    sget v10, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback$Stub$Proxy:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_7

    .line 2286
    sput-object v4, Lcom/facebook/soloader/SoLoader;->onRelationshipValidationResult:[Lo/onBecameBackground;

    goto/16 :goto_6

    .line 2289
    :cond_7
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2290
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2291
    new-instance v11, Lo/getLaunchCounter;

    invoke-direct {v11, v0, v4, v9, v8}, Lo/getLaunchCounter;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 2293
    invoke-virtual {v10, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2294
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "adding backup source from : "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v4, v9, :cond_8

    .line 2297
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v4, "adding backup sources from split apks"

    .line 2298
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v9, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    if-ge v11, v9, :cond_8

    aget-object v13, v4, v11

    .line 2301
    new-instance v14, Lo/getLaunchCounter;

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v5, "lib-"

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v12, 0x1

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v0, v15, v12, v8}, Lo/getLaunchCounter;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 2307
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "adding backup source: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    invoke-virtual {v10, v14}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move v12, v5

    const/4 v5, 0x1

    goto :goto_5

    .line 2312
    :cond_8
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [Lo/onBecameBackground;

    invoke-virtual {v10, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onBecameBackground;

    sput-object v0, Lcom/facebook/soloader/SoLoader;->onRelationshipValidationResult:[Lo/onBecameBackground;

    .line 2313
    invoke-virtual {v7, v6, v10}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    .line 2318
    :cond_9
    :goto_6
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [Lo/AppsFlyerLibCore$4;

    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AppsFlyerLibCore$4;

    .line 2319
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback()I

    move-result v4

    .line 2320
    array-length v5, v0

    :goto_7
    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_a

    .line 2321
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Preparing SO source: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v0, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    aget-object v5, v0, v6

    invoke-virtual {v5, v4}, Lo/AppsFlyerLibCore$4;->onMessageChannelReady(I)V

    move v5, v6

    goto :goto_7

    .line 2324
    :cond_a
    sput-object v0, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;

    .line 2325
    sget v0, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    sput v0, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback:I

    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "init finish: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " SO sources prepared"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2329
    :cond_b
    :try_start_3
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    sget-object v0, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1201
    invoke-static {}, Lo/AppsFlyerLibCore$3;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1202
    new-instance v0, Lo/removeAndRecycleView$onNavigationEvent;

    invoke-direct {v0}, Lo/removeAndRecycleView$onNavigationEvent;-><init>()V

    invoke-static {v0}, Lo/AppsFlyerLibCore$3;->onPostMessage(Lo/AppsFlyerLibCore$6;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1205
    :cond_c
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception v0

    .line 2329
    :try_start_4
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    sget-object v1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2331
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 1205
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1206
    throw v0
.end method

.method private static onNavigationEvent()Z
    .locals 2

    .line 942
    sget-object v0, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 944
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->onPostMessage:[Lo/AppsFlyerLibCore$4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 946
    :goto_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 947
    throw v0
.end method

.method private static onPostMessage()Ljava/lang/reflect/Method;
    .locals 7

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    :try_start_0
    const-class v0, Ljava/lang/Runtime;

    const-string v2, "nativeLoad"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    .line 439
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v2, "SoLoader"

    const-string v3, "Cannot get nativeLoad method"

    .line 445
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static onPostMessage(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 1

    const/4 v0, 0x0

    .line 635
    invoke-static {p0, v0, v0, p1, p2}, Lcom/facebook/soloader/SoLoader;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 577
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->extraCallback(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 649
    :try_start_0
    invoke-static {p0, p1, v1, p3, v1}, Lcom/facebook/soloader/SoLoader;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 651
    sget v2, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback:I

    .line 652
    sget-object v3, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 654
    :try_start_1
    sget-object v3, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback$Stub:Lo/І;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-object v3, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback$Stub:Lo/І;

    invoke-virtual {v3}, Lo/І;->extraCallback()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SoLoader"

    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sApplicationSoSource updated during load: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", attempting load again."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget v3, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback:I

    add-int/2addr v3, v4

    sput v3, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 664
    :goto_0
    sget-object v3, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 667
    sget v3, Lcom/facebook/soloader/SoLoader;->ICustomTabsCallback:I

    if-eq v3, v2, :cond_2

    :goto_1
    if-nez v4, :cond_0

    return v0

    .line 669
    :cond_2
    throw v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 662
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    :goto_2
    sget-object p1, Lcom/facebook/soloader/SoLoader;->extraCallback:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 665
    throw p0
.end method
