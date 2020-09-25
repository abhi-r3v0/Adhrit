.class final Lo/isBrowsable$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isBrowsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# static fields
.field static final extraCallback:Lo/isBrowsable$onNavigationEvent;


# instance fields
.field final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field onNavigationEvent:Lo/isBrowsable$onNavigationEvent;

.field final onPostMessage:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 202
    new-instance v0, Lo/isBrowsable$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lo/isBrowsable$onNavigationEvent;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lo/isBrowsable$onNavigationEvent;->extraCallback:Lo/isBrowsable$onNavigationEvent;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lo/isBrowsable$onNavigationEvent;->onPostMessage:Ljava/lang/Runnable;

    .line 212
    iput-object p2, p0, Lo/isBrowsable$onNavigationEvent;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-void
.end method
