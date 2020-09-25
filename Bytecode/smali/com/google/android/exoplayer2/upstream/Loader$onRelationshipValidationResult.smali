.class final Lcom/google/android/exoplayer2/upstream/Loader$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;)V
    .locals 0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onRelationshipValidationResult;->onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onRelationshipValidationResult;->onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;->asInterface()V

    return-void
.end method
