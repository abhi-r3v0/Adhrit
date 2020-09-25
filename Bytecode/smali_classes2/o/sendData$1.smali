.class final Lo/sendData$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendData;->ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/moveRedRight$onPostMessage;

.field private synthetic onPostMessage:Lo/sendData;


# direct methods
.method constructor <init>(Lo/sendData;Lo/moveRedRight$onPostMessage;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/sendData$1;->onPostMessage:Lo/sendData;

    iput-object p2, p0, Lo/sendData$1;->extraCallback:Lo/moveRedRight$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 56
    iget-object v0, p0, Lo/sendData$1;->extraCallback:Lo/moveRedRight$onPostMessage;

    iget-object v1, p0, Lo/sendData$1;->onPostMessage:Lo/sendData;

    iget-object v1, v1, Lo/sendData;->extraCallback:Lo/emptyMap;

    .line 1541
    new-instance v2, Lio/grpc/StatusException;

    invoke-direct {v2, v1}, Lio/grpc/StatusException;-><init>(Lo/emptyMap;)V

    .line 56
    invoke-interface {v0}, Lo/moveRedRight$onPostMessage;->extraCallback()V

    return-void
.end method
