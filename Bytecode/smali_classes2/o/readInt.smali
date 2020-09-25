.class final Lo/readInt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final extraCallback:[B

.field private final onMessageChannelReady:Lcom/google/android/gms/internal/measurement/zzhf;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lo/readInt;->extraCallback:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhf;->onPostMessage([B)Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object p1

    iput-object p1, p0, Lo/readInt;->onMessageChannelReady:Lcom/google/android/gms/internal/measurement/zzhf;

    return-void
.end method

.method synthetic constructor <init>(ILo/readFully;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lo/readInt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/ac$1;
    .locals 2

    .line 5
    iget-object v0, p0, Lo/readInt;->onMessageChannelReady:Lcom/google/android/gms/internal/measurement/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhf;->onNavigationEvent()V

    .line 6
    new-instance v0, Lo/readFloat;

    iget-object v1, p0, Lo/readInt;->extraCallback:[B

    invoke-direct {v0, v1}, Lo/readFloat;-><init>([B)V

    return-object v0
.end method

.method public final onPostMessage()Lcom/google/android/gms/internal/measurement/zzhf;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/readInt;->onMessageChannelReady:Lcom/google/android/gms/internal/measurement/zzhf;

    return-object v0
.end method
