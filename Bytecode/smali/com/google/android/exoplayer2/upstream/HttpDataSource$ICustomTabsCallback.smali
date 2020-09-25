.class public abstract Lcom/google/android/exoplayer2/upstream/HttpDataSource$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Widget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$ICustomTabsCallback;->onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public synthetic ICustomTabsCallback()Lo/ResultJsonAdapter;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$ICustomTabsCallback;->extraCallback()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$ICustomTabsCallback;->onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$ICustomTabsCallback;->extraCallback(Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method protected abstract extraCallback(Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end method
