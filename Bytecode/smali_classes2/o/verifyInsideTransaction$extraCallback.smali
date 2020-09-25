.class final Lo/verifyInsideTransaction$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/verifyInsideTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/verifyInsideTransaction$asBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 133
    invoke-static {v0}, Lo/verifyInsideTransaction$extraCallback;->onMessageChannelReady(Ljava/util/concurrent/atomic/AtomicReference;)Lo/verifyInsideTransaction$asBinder;

    move-result-object v1

    sput-object v1, Lo/verifyInsideTransaction$extraCallback;->ICustomTabsCallback:Lo/verifyInsideTransaction$asBinder;

    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 137
    sget-object v1, Lo/verifyInsideTransaction;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Storage override doesn\'t exist. Using default"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static onMessageChannelReady(Ljava/util/concurrent/atomic/AtomicReference;)Lo/verifyInsideTransaction$asBinder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "-",
            "Ljava/lang/ClassNotFoundException;",
            ">;)",
            "Lo/verifyInsideTransaction$asBinder;"
        }
    .end annotation

    :try_start_0
    const-string v0, "io.grpc.override.ContextStorageOverride"

    .line 144
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    const-class v1, Lo/verifyInsideTransaction$asBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/verifyInsideTransaction$asBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Storage override failed to initialize"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 149
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 150
    new-instance p0, Lo/identityTranslator;

    invoke-direct {p0}, Lo/identityTranslator;-><init>()V

    return-object p0
.end method
