.class public Lo/setOs;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INVALID:J = -0x1L


# instance fields
.field private previousSequenceNumber:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lo/setOs;->previousSequenceNumber:J

    return-void
.end method


# virtual methods
.method public next()J
    .locals 4

    .line 28
    iget-wide v0, p0, Lo/setOs;->previousSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/setOs;->previousSequenceNumber:J

    return-wide v0
.end method
