.class final Lo/saveUserOverwrite$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveUserOverwrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 400
    new-instance v0, Lo/saveUserOverwrite$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/saveUserOverwrite$onNavigationEvent;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
