.class public final Lo/unionWith$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unionWith;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

.field public final onPostMessage:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/unionWith$ICustomTabsCallback;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/unionWith$ICustomTabsCallback;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 198
    check-cast p1, Lo/unionWith$ICustomTabsCallback;

    iput-object p1, p0, Lo/unionWith$extraCallback;->ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

    if-eqz p2, :cond_0

    .line 199
    check-cast p2, Ljava/util/concurrent/ScheduledFuture;

    iput-object p2, p0, Lo/unionWith$extraCallback;->onPostMessage:Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "future"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "runnable"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lo/unionWith$ICustomTabsCallback;Ljava/util/concurrent/ScheduledFuture;B)V
    .locals 0

    .line 193
    invoke-direct {p0, p1, p2}, Lo/unionWith$extraCallback;-><init>(Lo/unionWith$ICustomTabsCallback;Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method
