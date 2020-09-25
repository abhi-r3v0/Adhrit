.class public final Lo/saveNested;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# instance fields
.field private final arg$1:Lo/toByteArray;

.field private final arg$2:Lcom/google/android/gms/tasks/Task;

.field private final arg$3:Lcom/google/android/gms/tasks/Task;

.field private final arg$4:Ljava/util/Date;


# direct methods
.method private constructor <init>(Lo/toByteArray;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/util/Date;)V
    .locals 0

    .line 10000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/saveNested;->arg$1:Lo/toByteArray;

    iput-object p2, p0, Lo/saveNested;->arg$2:Lcom/google/android/gms/tasks/Task;

    iput-object p3, p0, Lo/saveNested;->arg$3:Lcom/google/android/gms/tasks/Task;

    iput-object p4, p0, Lo/saveNested;->arg$4:Ljava/util/Date;

    return-void
.end method

.method public static lambdaFactory$(Lo/toByteArray;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/util/Date;)Lo/isDefaultApp;
    .locals 1

    .line 12000
    new-instance v0, Lo/saveNested;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/saveNested;-><init>(Lo/toByteArray;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/util/Date;)V

    return-object v0
.end method

.method public static onPostMessage(Lo/verifyInsideTransaction;)Lo/emptyMap;
    .locals 6

    if-eqz p0, :cond_16

    .line 130
    invoke-virtual {p0}, Lo/verifyInsideTransaction;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lo/verifyInsideTransaction;->ICustomTabsCallback()Ljava/lang/Throwable;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_4

    .line 136
    sget-object p0, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    const-string v2, "io.grpc.Context was cancelled without error"

    .line 2467
    iget-object v3, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-eq v3, v2, :cond_1

    if-eqz v3, :cond_2

    .line 3052
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    return-object p0

    .line 2470
    :cond_3
    new-instance v0, Lo/emptyMap;

    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object p0, p0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, p0}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 138
    :cond_4
    instance-of v2, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v2, :cond_b

    .line 139
    sget-object v2, Lo/emptyMap;->onNavigationEvent:Lo/emptyMap;

    .line 140
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 3467
    iget-object v4, v2, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-eq v4, v3, :cond_6

    if-eqz v4, :cond_5

    .line 4052
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_7

    goto :goto_2

    .line 3470
    :cond_7
    new-instance v4, Lo/emptyMap;

    iget-object v5, v2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v2, v2, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v3, v2}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    .line 4456
    :goto_2
    iget-object v3, v2, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    if-eq v3, p0, :cond_8

    if-eqz v3, :cond_9

    .line 5052
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_a

    return-object v2

    .line 4459
    :cond_a
    new-instance v0, Lo/emptyMap;

    iget-object v1, v2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v2, v2, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 143
    :cond_b
    invoke-static {p0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object v2

    .line 144
    sget-object v3, Lo/emptyMap$onPostMessage;->onNavigationEvent:Lo/emptyMap$onPostMessage;

    .line 5492
    iget-object v4, v2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 5509
    iget-object v3, v2, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    if-ne v3, p0, :cond_12

    .line 148
    sget-object v2, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    const-string v3, "Context cancelled"

    .line 6467
    iget-object v4, v2, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-eq v4, v3, :cond_d

    if-eqz v4, :cond_c

    .line 7052
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    :cond_d
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_e

    goto :goto_5

    .line 6470
    :cond_e
    new-instance v4, Lo/emptyMap;

    iget-object v5, v2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v2, v2, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v3, v2}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    .line 7456
    :goto_5
    iget-object v3, v2, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    if-eq v3, p0, :cond_f

    if-eqz v3, :cond_10

    .line 8052
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    if-eqz v0, :cond_11

    return-object v2

    .line 7459
    :cond_11
    new-instance v0, Lo/emptyMap;

    iget-object v1, v2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v2, v2, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 8456
    :cond_12
    iget-object v3, v2, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    if-eq v3, p0, :cond_13

    if-eqz v3, :cond_14

    .line 9052
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    if-eqz v0, :cond_15

    return-object v2

    .line 8459
    :cond_15
    new-instance v0, Lo/emptyMap;

    iget-object v1, v2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v2, v2, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 1910
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "context must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    .line 11000
    iget-object v0, p0, Lo/saveNested;->arg$1:Lo/toByteArray;

    iget-object v1, p0, Lo/saveNested;->arg$2:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lo/saveNested;->arg$3:Lcom/google/android/gms/tasks/Task;

    iget-object v3, p0, Lo/saveNested;->arg$4:Ljava/util/Date;

    invoke-static {v0, v1, v2, v3, p1}, Lo/toByteArray;->lambda$fetchIfCacheExpiredAndNotThrottled$1(Lo/toByteArray;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/util/Date;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
