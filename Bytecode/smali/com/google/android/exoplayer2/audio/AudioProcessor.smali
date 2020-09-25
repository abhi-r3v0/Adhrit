.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioProcessor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
    }
.end annotation


# static fields
.field public static final onPostMessage:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->onPostMessage:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract ICustomTabsCallback$Stub()Z
.end method

.method public abstract asInterface()V
.end method

.method public abstract extraCallback(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract extraCallback()Z
.end method

.method public abstract extraCallback(III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public abstract onNavigationEvent()I
.end method

.method public abstract onPostMessage()I
.end method

.method public abstract onRelationshipValidationResult()V
.end method

.method public abstract onTransact()Ljava/nio/ByteBuffer;
.end method
