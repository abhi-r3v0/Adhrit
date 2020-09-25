.class public final Lo/getRemainingScrollHorizontal;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRemainingScrollHorizontal$extraCallback;
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/getRemainingScrollHorizontal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/getRemainingScrollHorizontal;

    invoke-direct {v0}, Lo/getRemainingScrollHorizontal;-><init>()V

    sput-object v0, Lo/getRemainingScrollHorizontal;->onNavigationEvent:Lo/getRemainingScrollHorizontal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2000
    check-cast p1, Ljava/lang/Throwable;

    .line 2543
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
