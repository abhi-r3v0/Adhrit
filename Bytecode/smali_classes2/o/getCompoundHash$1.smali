.class final Lo/getCompoundHash$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lo/getCompoundHash$1;->onPostMessage:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 159
    sget-object p1, Lo/getCompoundHash;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/getCompoundHash$1;->onPostMessage:Lo/getCompoundHash;

    .line 161
    invoke-virtual {v2}, Lo/getCompoundHash;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] Uncaught exception in the SynchronizationContext. Panic!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    iget-object p1, p0, Lo/getCompoundHash$1;->onPostMessage:Lo/getCompoundHash;

    invoke-virtual {p1, p2}, Lo/getCompoundHash;->extraCallback(Ljava/lang/Throwable;)V

    return-void
.end method
