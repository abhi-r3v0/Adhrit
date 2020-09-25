.class public final Lo/SuggestedPiJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter$onNavigationEvent;


# instance fields
.field private final onPostMessage:Lo/InitPayloadJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lo/SuggestedPiJsonAdapter;-><init>(Lo/InitPayloadJsonAdapter;)V

    return-void
.end method

.method public constructor <init>(Lo/InitPayloadJsonAdapter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/SuggestedPiJsonAdapter;->onPostMessage:Lo/InitPayloadJsonAdapter;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/ResultJsonAdapter;
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    .line 38
    iget-object v1, p0, Lo/SuggestedPiJsonAdapter;->onPostMessage:Lo/InitPayloadJsonAdapter;

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v0, v1}, Lo/PaymentInstrumentRequest;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    :cond_0
    return-object v0
.end method
