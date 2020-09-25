.class public final Lcom/google/android/exoplayer2/upstream/Loader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/Loader$onRelationshipValidationResult;,
        Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;,
        Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;,
        Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;,
        Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;,
        Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;,
        Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

.field public static final onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

.field public static final onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

.field public static final onPostMessage:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;


# instance fields
.field private asInterface:Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent<",
            "+",
            "Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/util/concurrent/ExecutorService;

.field private onRelationshipValidationResult:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    .line 157
    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    move-result-object v2

    sput-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    const/4 v2, 0x1

    .line 160
    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    move-result-object v2

    sput-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    .line 162
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;-><init>(IJLcom/google/android/exoplayer2/upstream/Loader$2;)V

    sput-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->onPostMessage:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    .line 168
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;-><init>(IJLcom/google/android/exoplayer2/upstream/Loader$2;)V

    sput-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->extraCallback:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static ICustomTabsCallback(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;
    .locals 2

    .line 211
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;-><init>(IJLcom/google/android/exoplayer2/upstream/Loader$2;)V

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->onRelationshipValidationResult:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->asInterface:Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    return-object p0
.end method

.method static synthetic onPostMessage(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;)Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->asInterface:Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    return-object p1
.end method

.method static synthetic onPostMessage(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->extraCallback:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->asInterface:Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent(Z)V

    return-void
.end method

.method public final ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->asInterface:Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 284
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->extraCallback:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$onRelationshipValidationResult;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader$onRelationshipValidationResult;-><init>(Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->extraCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final asInterface()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 296
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->onPostMessage(I)V

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->onRelationshipValidationResult:Ljava/io/IOException;

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;",
            ">(TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady<",
            "TT;>;I)J"
        }
    .end annotation

    .line 245
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->onRelationshipValidationResult:Ljava/io/IOException;

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 249
    new-instance v10, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;-><init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onPostMessage(J)V

    return-wide v8
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->onRelationshipValidationResult:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->onRelationshipValidationResult:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->asInterface:Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 304
    iget p1, v0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onPostMessage:I

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onMessageChannelReady(I)V

    :cond_1
    return-void

    .line 302
    :cond_2
    throw v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->asInterface:Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
