.class public abstract Lo/getMinidumpFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Ljava/lang/Exception;
.end method

.method public abstract ICustomTabsCallback(Lo/getAppFile;)Lo/getMinidumpFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAppFile<",
            "-TResultT;>;)",
            "Lo/getMinidumpFile<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract extraCallback()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getAppFile;)Lo/getMinidumpFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getAppFile<",
            "-TResultT;>;)",
            "Lo/getMinidumpFile<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getLogger;)Lo/getMinidumpFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getLogger;",
            ")",
            "Lo/getMinidumpFile<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lo/MissingNativeComponent$1;)Lo/getMinidumpFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MissingNativeComponent$1<",
            "TResultT;>;)",
            "Lo/getMinidumpFile<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()Z
.end method

.method public abstract onPostMessage()Z
.end method
