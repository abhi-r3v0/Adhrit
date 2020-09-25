.class public final Lo/onReceive;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onReceive$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/onReceive;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lo/onReceive;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/onReceive$extraCallback;

    invoke-direct {v1, p1}, Lo/onReceive$extraCallback;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
