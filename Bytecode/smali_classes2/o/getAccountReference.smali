.class public final Lo/getAccountReference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addBackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getAccountReference$onPostMessage;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/loadTrackedQueries$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/loadTrackedQueries$ICustomTabsCallback;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getAccountReference;->arg$1:Lo/loadTrackedQueries$ICustomTabsCallback;

    return-void
.end method

.method public static lambdaFactory$(Lo/loadTrackedQueries$ICustomTabsCallback;)Lo/addBackgroundStateChangeListener;
    .locals 1

    .line 3000
    new-instance v0, Lo/getAccountReference;

    invoke-direct {v0, p0}, Lo/getAccountReference;-><init>(Lo/loadTrackedQueries$ICustomTabsCallback;)V

    return-object v0
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/getAccountReference;->arg$1:Lo/loadTrackedQueries$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception;->lambda$applyRequestMetadata$1(Lo/loadTrackedQueries$ICustomTabsCallback;Ljava/lang/Exception;)V

    return-void
.end method
