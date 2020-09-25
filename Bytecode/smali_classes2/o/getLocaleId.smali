.class final Lo/getLocaleId;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lcom/google/android/gms/internal/firebase_auth/zzhq;

.field private final onNavigationEvent:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lo/getLocaleId;->onNavigationEvent:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback([B)Lcom/google/android/gms/internal/firebase_auth/zzhq;

    move-result-object p1

    iput-object p1, p0, Lo/getLocaleId;->ICustomTabsCallback:Lcom/google/android/gms/internal/firebase_auth/zzhq;

    return-void
.end method

.method synthetic constructor <init>(ILo/setInitiatedTime;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lo/getLocaleId;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lcom/google/android/gms/internal/firebase_auth/zzhq;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/getLocaleId;->ICustomTabsCallback:Lcom/google/android/gms/internal/firebase_auth/zzhq;

    return-object v0
.end method

.method public final onPostMessage()Lo/setMandatory;
    .locals 2

    .line 5
    iget-object v0, p0, Lo/getLocaleId;->ICustomTabsCallback:Lcom/google/android/gms/internal/firebase_auth/zzhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback()V

    .line 6
    new-instance v0, Lo/setIssueResolved;

    iget-object v1, p0, Lo/getLocaleId;->onNavigationEvent:[B

    invoke-direct {v0, v1}, Lo/setIssueResolved;-><init>([B)V

    return-object v0
.end method
