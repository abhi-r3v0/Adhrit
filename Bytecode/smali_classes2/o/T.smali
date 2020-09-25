.class final Lo/T;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lcom/google/android/gms/internal/firebase-perf/zzfa;

.field private final onPostMessage:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lo/T;->onPostMessage:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage([B)Lcom/google/android/gms/internal/firebase-perf/zzfa;

    move-result-object p1

    iput-object p1, p0, Lo/T;->ICustomTabsCallback:Lcom/google/android/gms/internal/firebase-perf/zzfa;

    return-void
.end method

.method synthetic constructor <init>(ILo/K;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lo/T;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lcom/google/android/gms/internal/firebase-perf/zzfa;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/T;->ICustomTabsCallback:Lcom/google/android/gms/internal/firebase-perf/zzfa;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/ChannelListActivity$2;
    .locals 2

    .line 5
    iget-object v0, p0, Lo/T;->ICustomTabsCallback:Lcom/google/android/gms/internal/firebase-perf/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onNavigationEvent()V

    .line 6
    new-instance v0, Lo/U;

    iget-object v1, p0, Lo/T;->onPostMessage:[B

    invoke-direct {v0, v1}, Lo/U;-><init>([B)V

    return-object v0
.end method
