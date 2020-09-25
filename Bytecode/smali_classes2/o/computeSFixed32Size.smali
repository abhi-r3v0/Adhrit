.class public final Lo/computeSFixed32Size;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeFloatSize;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ICustomTabsCallback:Lo/computeSFixed32Size;


# instance fields
.field public extraCallback:D

.field public onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/writeFloatNoTag;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Z

.field public onPostMessage:I

.field public onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/writeFloatNoTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lo/computeSFixed32Size;

    invoke-direct {v0}, Lo/computeSFixed32Size;-><init>()V

    sput-object v0, Lo/computeSFixed32Size;->ICustomTabsCallback:Lo/computeSFixed32Size;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 54
    iput-wide v0, p0, Lo/computeSFixed32Size;->extraCallback:D

    const/16 v0, 0x88

    .line 55
    iput v0, p0, Lo/computeSFixed32Size;->onPostMessage:I

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lo/computeSFixed32Size;->onNavigationEvent:Z

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/computeSFixed32Size;->onMessageChannelReady:Ljava/util/List;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/computeSFixed32Size;->onTransact:Ljava/util/List;

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 225
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static onPostMessage(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3234
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Class;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 194
    iget-wide v0, p0, Lo/computeSFixed32Size;->extraCallback:D

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_3

    const-class v0, Lo/computeBytesSize;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo/computeBytesSize;

    const-class v1, Lo/computeBoolSize;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lo/computeBoolSize;

    if-eqz v0, :cond_0

    .line 1243
    invoke-interface {v0}, Lo/computeBytesSize;->extraCallback()D

    move-result-wide v4

    .line 1244
    iget-wide v6, p0, Lo/computeSFixed32Size;->extraCallback:D

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 1253
    invoke-interface {v1}, Lo/computeBoolSize;->onMessageChannelReady()D

    move-result-wide v0

    .line 1254
    iget-wide v4, p0, Lo/computeSFixed32Size;->extraCallback:D

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    return v3

    .line 198
    :cond_3
    iget-boolean v0, p0, Lo/computeSFixed32Size;->onNavigationEvent:Z

    if-nez v0, :cond_6

    .line 2230
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2234
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_6

    return v3

    .line 3225
    :cond_6
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3226
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_9

    return v3

    :cond_9
    return v2
.end method

.method protected final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lo/computeSFixed32Size;->onPostMessage()Lo/computeSFixed32Size;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/writeStringNoTag;",
            "Lo/writeRawByte<",
            "TT;>;)",
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation

    .line 1094
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 113
    invoke-virtual {p0, v0}, Lo/computeSFixed32Size;->ICustomTabsCallback(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {p0, v0, v3}, Lo/computeSFixed32Size;->extraCallback(Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 116
    invoke-virtual {p0, v0, v2}, Lo/computeSFixed32Size;->extraCallback(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-nez v8, :cond_4

    if-nez v7, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_4
    new-instance v0, Lo/computeSFixed32Size$1;

    move-object v5, v0

    move-object v6, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lo/computeSFixed32Size$1;-><init>(Lo/computeSFixed32Size;ZZLo/writeStringNoTag;Lo/writeRawByte;)V

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/Class;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 215
    iget-object p2, p0, Lo/computeSFixed32Size;->onMessageChannelReady:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lo/computeSFixed32Size;->onTransact:Ljava/util/List;

    .line 216
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeFloatNoTag;

    .line 217
    invoke-interface {v0, p1}, Lo/writeFloatNoTag;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onPostMessage()Lo/computeSFixed32Size;
    .locals 2

    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeSFixed32Size;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
