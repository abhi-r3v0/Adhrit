.class public final Lo/createPersistenceManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/createPersistenceManager$onMessageChannelReady;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/doTransaction;

.field ICustomTabsCallback$Stub:J

.field ICustomTabsService:I

.field asBinder:J

.field asInterface:J

.field extraCallback:J

.field private getInterfaceDescriptor:Landroid/os/HandlerThread;

.field newSession:I

.field onMessageChannelReady:J

.field onNavigationEvent:J

.field public final onPostMessage:Landroid/os/Handler;

.field onRelationshipValidationResult:J

.field onTransact:J

.field warmup:I


# direct methods
.method public constructor <init>(Lo/doTransaction;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/createPersistenceManager;->ICustomTabsCallback:Lo/doTransaction;

    .line 53
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Picasso-Stats"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lo/createPersistenceManager;->getInterfaceDescriptor:Landroid/os/HandlerThread;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 55
    iget-object p1, p0, Lo/createPersistenceManager;->getInterfaceDescriptor:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lo/saveUserOverwrite;->extraCallback(Landroid/os/Looper;)V

    .line 56
    new-instance p1, Lo/createPersistenceManager$onMessageChannelReady;

    iget-object v0, p0, Lo/createPersistenceManager;->getInterfaceDescriptor:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lo/createPersistenceManager$onMessageChannelReady;-><init>(Landroid/os/Looper;Lo/createPersistenceManager;)V

    iput-object p1, p0, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    return-void
.end method
