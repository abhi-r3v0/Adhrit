.class public interface abstract Lo/getConfigURL;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onPostMessage:Lo/getConfigURL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lo/getConfigURL$2;

    invoke-direct {v0}, Lo/getConfigURL$2;-><init>()V

    sput-object v0, Lo/getConfigURL;->onPostMessage:Lo/getConfigURL;

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent()Lo/isAirplaneModeOn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lo/isAirplaneModeOn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
