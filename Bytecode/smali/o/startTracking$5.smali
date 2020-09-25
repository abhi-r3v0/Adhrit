.class final Lo/startTracking$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/startTracking;-><init>(Ljava/util/concurrent/Executor;Lo/startTracking$ICustomTabsCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/startTracking;


# direct methods
.method constructor <init>(Lo/startTracking;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/startTracking$5;->extraCallback:Lo/startTracking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 97
    iget-object v0, p0, Lo/startTracking$5;->extraCallback:Lo/startTracking;

    .line 1204
    iget-object v1, v0, Lo/startTracking;->extraCallback:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lo/startTracking;->onPostMessage:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
