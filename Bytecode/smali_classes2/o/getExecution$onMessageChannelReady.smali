.class public Lo/getExecution$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExecution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# static fields
.field private static final COLLECTION_DISABLED:J = -0x1L

.field private static final DEFAULT_CACHE_SIZE_BYTES:J = 0x6400000L

.field private static final DEFAULT_COLLECTION_PERCENTILE:I = 0xa

.field private static final DEFAULT_MAX_SEQUENCE_NUMBERS_TO_COLLECT:I = 0x3e8


# instance fields
.field final maximumSequenceNumbersToCollect:I

.field final minBytesThreshold:J

.field final percentileToCollect:I


# direct methods
.method constructor <init>(JII)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Lo/getExecution$onMessageChannelReady;->minBytesThreshold:J

    .line 70
    iput p3, p0, Lo/getExecution$onMessageChannelReady;->percentileToCollect:I

    .line 71
    iput p4, p0, Lo/getExecution$onMessageChannelReady;->maximumSequenceNumbersToCollect:I

    return-void
.end method

.method public static Default()Lo/getExecution$onMessageChannelReady;
    .locals 5

    .line 50
    new-instance v0, Lo/getExecution$onMessageChannelReady;

    const-wide/32 v1, 0x6400000

    const/16 v3, 0xa

    const/16 v4, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lo/getExecution$onMessageChannelReady;-><init>(JII)V

    return-object v0
.end method

.method public static Disabled()Lo/getExecution$onMessageChannelReady;
    .locals 4

    .line 57
    new-instance v0, Lo/getExecution$onMessageChannelReady;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3, v1, v1}, Lo/getExecution$onMessageChannelReady;-><init>(JII)V

    return-object v0
.end method

.method public static WithCacheSizeBytes(J)Lo/getExecution$onMessageChannelReady;
    .locals 3

    .line 61
    new-instance v0, Lo/getExecution$onMessageChannelReady;

    const/16 v1, 0xa

    const/16 v2, 0x3e8

    invoke-direct {v0, p0, p1, v1, v2}, Lo/getExecution$onMessageChannelReady;-><init>(JII)V

    return-object v0
.end method
