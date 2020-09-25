.class public final Lo/InstrumentsCompleteJsonAdapter$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstrumentsCompleteJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:Ljava/lang/Object;

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 105
    invoke-direct {p0, p1, v0, v1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 154
    invoke-direct/range {v0 .. v6}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;IIJI)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 169
    iput p2, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    .line 170
    iput p3, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    .line 171
    iput-wide p4, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    .line 172
    iput p6, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onPostMessage:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 116
    invoke-direct/range {v0 .. v6}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    .line 134
    invoke-direct/range {v0 .. v6}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 8

    .line 177
    iget-object v0, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget v3, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    iget v4, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    iget-wide v5, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    iget v7, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onPostMessage:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;IIJI)V

    return-object v0
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    .line 187
    iget v0, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    check-cast p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 200
    iget-object v2, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v3, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    iget v3, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    iget v3, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    iget-wide v4, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onPostMessage:I

    iget p1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onPostMessage:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 210
    iget-object v0, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 211
    iget v1, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 212
    iget v1, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 213
    iget-wide v1, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 214
    iget v1, p0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onPostMessage:I

    add-int/2addr v0, v1

    return v0
.end method
