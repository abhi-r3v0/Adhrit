.class public final Lo/getRewardsClosingBalance$extraCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRewardsClosingBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getRewardsClosingBalance$extraCallback;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/getRewardsClosingBalance$extraCallback;

    invoke-direct {v0, p0}, Lo/getRewardsClosingBalance$extraCallback;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 0

    return-void
.end method

.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/getRewardsClosingBalance$extraCallback;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->lambda$commit$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Lcom/google/android/gms/tasks/Task;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
