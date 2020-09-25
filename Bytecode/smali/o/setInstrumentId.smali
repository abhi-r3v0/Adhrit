.class public final Lo/setInstrumentId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getLogger;


# static fields
.field public static final extraCallback:Lo/getLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8000
    new-instance v0, Lo/setInstrumentId;

    invoke-direct {v0}, Lo/setInstrumentId;-><init>()V

    sput-object v0, Lo/setInstrumentId;->extraCallback:Lo/getLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lo/getBankCode;
    .locals 1

    .line 2
    new-instance v0, Lo/getBankCode;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, p0, p1}, Lo/getBankCode;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-object v0

    .line 1002
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extraCallback(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lo/setBin;->onNavigationEvent(Landroid/content/Intent;)Lo/endChangeAnimation$ICustomTabsCallback;

    move-result-object p0

    if-nez p0, :cond_0

    .line 6
    sget-object p0, Lcom/google/android/gms/common/api/Status;->extraCallback:Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lo/replaceAllInsert$extraCallback;->onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    .line 1004
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 1005
    invoke-virtual {v0, p0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v0

    .line 2005
    :cond_0
    iget-object v0, p0, Lo/endChangeAnimation$ICustomTabsCallback;->onPostMessage:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 8
    invoke-virtual {p0}, Lo/endChangeAnimation$ICustomTabsCallback;->extraCallback()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 2021
    iget v1, v1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 4001
    :cond_2
    new-instance p0, Lo/getProjectId;

    invoke-direct {p0}, Lo/getProjectId;-><init>()V

    .line 4002
    invoke-virtual {p0, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p0

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lo/endChangeAnimation$ICustomTabsCallback;->extraCallback()Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    invoke-static {p0}, Lo/replaceAllInsert$extraCallback;->onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    .line 3004
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 3005
    invoke-virtual {v0, p0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Exception;)V
    .locals 3

    .line 7000
    sget-object v0, Lo/getOnFlingListener$onNavigationEvent;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Could not sync active asset packs. %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
