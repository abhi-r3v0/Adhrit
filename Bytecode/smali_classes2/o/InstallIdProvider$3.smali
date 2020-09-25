.class final Lo/InstallIdProvider$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstallIdProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstallIdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setDaemon(Ljava/lang/Thread;Z)V
    .locals 0

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method public final setName(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public final setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
