.class public final Lo/getStoreAssociationSubHeader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

.field private final arg$2:Lo/reverseIterator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/reverseIterator;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getStoreAssociationSubHeader;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iput-object p2, p0, Lo/getStoreAssociationSubHeader;->arg$2:Lo/reverseIterator;

    return-void
.end method

.method public static extraCallback(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/reverseIterator;)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/getStoreAssociationSubHeader;

    invoke-direct {v0, p0, p1}, Lo/getStoreAssociationSubHeader;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/reverseIterator;)V

    return-object v0
.end method

.method public static onNavigationEvent(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    or-long/2addr p0, v0

    .line 6
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/getStoreAssociationSubHeader;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iget-object v1, p0, Lo/getStoreAssociationSubHeader;->arg$2:Lo/reverseIterator;

    invoke-static {v0, v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->lambda$createClientCall$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/reverseIterator;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
