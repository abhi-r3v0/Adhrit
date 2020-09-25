.class public final Lo/queryForTag$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/queryForTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/text/Regex$Companion;",
        "",
        "()V",
        "ensureUnicodeCase",
        "",
        "flags",
        "escape",
        "",
        "literal",
        "escapeReplacement",
        "fromLiteral",
        "Lkotlin/text/Regex;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:J

.field public ICustomTabsCallback$Stub:J

.field public ICustomTabsCallback$Stub$Proxy:I

.field public ICustomTabsService:I

.field public asBinder:J

.field public asInterface:J

.field public extraCallback:I

.field private newSession:J

.field public onMessageChannelReady:I

.field public onNavigationEvent:J

.field public onPostMessage:J

.field public onRelationshipValidationResult:J

.field public onTransact:J

.field public warmup:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIJJJJJJJJIIIJ)V
    .locals 3

    move-object v0, p0

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 1046
    iput v1, v0, Lo/queryForTag$onMessageChannelReady;->onMessageChannelReady:I

    move v1, p2

    .line 1047
    iput v1, v0, Lo/queryForTag$onMessageChannelReady;->extraCallback:I

    move-wide v1, p3

    .line 1048
    iput-wide v1, v0, Lo/queryForTag$onMessageChannelReady;->ICustomTabsCallback:J

    move-wide v1, p5

    .line 1049
    iput-wide v1, v0, Lo/queryForTag$onMessageChannelReady;->onNavigationEvent:J

    move-wide v1, p7

    .line 1050
    iput-wide v1, v0, Lo/queryForTag$onMessageChannelReady;->onPostMessage:J

    move-wide v1, p9

    .line 1051
    iput-wide v1, v0, Lo/queryForTag$onMessageChannelReady;->asInterface:J

    move-wide v1, p11

    .line 1052
    iput-wide v1, v0, Lo/queryForTag$onMessageChannelReady;->asBinder:J

    move-wide/from16 v1, p13

    .line 1053
    iput-wide v1, v0, Lo/queryForTag$onMessageChannelReady;->onTransact:J

    move-wide/from16 v1, p15

    .line 1054
    iput-wide v1, v0, Lo/queryForTag$onMessageChannelReady;->onRelationshipValidationResult:J

    move-wide/from16 v1, p17

    .line 1055
    iput-wide v1, v0, Lo/queryForTag$onMessageChannelReady;->ICustomTabsCallback$Stub:J

    move/from16 v1, p19

    .line 1056
    iput v1, v0, Lo/queryForTag$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    move/from16 v1, p20

    .line 1057
    iput v1, v0, Lo/queryForTag$onMessageChannelReady;->warmup:I

    move/from16 v1, p21

    .line 1058
    iput v1, v0, Lo/queryForTag$onMessageChannelReady;->ICustomTabsService:I

    move-wide/from16 v1, p22

    .line 1059
    iput-wide v1, v0, Lo/queryForTag$onMessageChannelReady;->newSession:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatsSnapshot{maxSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/queryForTag$onMessageChannelReady;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/queryForTag$onMessageChannelReady;->extraCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cacheHits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/queryForTag$onMessageChannelReady;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cacheMisses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/queryForTag$onMessageChannelReady;->onNavigationEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/queryForTag$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalDownloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/queryForTag$onMessageChannelReady;->onPostMessage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", averageDownloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/queryForTag$onMessageChannelReady;->onTransact:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalOriginalBitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/queryForTag$onMessageChannelReady;->asInterface:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalTransformedBitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/queryForTag$onMessageChannelReady;->asBinder:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", averageOriginalBitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/queryForTag$onMessageChannelReady;->onRelationshipValidationResult:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", averageTransformedBitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/queryForTag$onMessageChannelReady;->ICustomTabsCallback$Stub:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", originalBitmapCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/queryForTag$onMessageChannelReady;->warmup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transformedBitmapCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/queryForTag$onMessageChannelReady;->ICustomTabsService:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/queryForTag$onMessageChannelReady;->newSession:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
