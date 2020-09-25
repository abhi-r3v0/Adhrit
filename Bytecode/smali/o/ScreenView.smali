.class public final Lo/ScreenView;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final onNavigationEvent:Lo/DreamAppGlideModule;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lo/DreamAppGlideModule;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object v0, p0, Lo/ScreenView;->onNavigationEvent:Lo/DreamAppGlideModule;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/Event$Action;Lo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/callAPI;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    :goto_0
    :try_start_0
    iget-object v3, p0, Lo/ScreenView;->onNavigationEvent:Lo/DreamAppGlideModule;

    iget-object v3, v3, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v4, 0xa

    invoke-interface {p1, v3, v0, v4}, Lo/Event$Action;->extraCallback([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iget-object v3, p0, Lo/ScreenView;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v3, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 62
    iget-object v3, p0, Lo/ScreenView;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v3}, Lo/DreamAppGlideModule;->newSession()I

    move-result v3

    sget v5, Lo/ImageHeaderParser$ImageType;->onPostMessage:I

    if-ne v3, v5, :cond_1

    .line 66
    iget-object v3, p0, Lo/ScreenView;->onNavigationEvent:Lo/DreamAppGlideModule;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 67
    iget-object v3, p0, Lo/ScreenView;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v3}, Lo/DreamAppGlideModule;->extraCommand()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    if-nez v1, :cond_0

    .line 71
    new-array v1, v5, [B

    .line 72
    iget-object v6, p0, Lo/ScreenView;->onNavigationEvent:Lo/DreamAppGlideModule;

    iget-object v6, v6, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {v6, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    invoke-interface {p1, v1, v4, v3}, Lo/Event$Action;->extraCallback([BII)V

    .line 75
    new-instance v3, Lo/ImageHeaderParser$ImageType;

    invoke-direct {v3, p2}, Lo/ImageHeaderParser$ImageType;-><init>(Lo/ImageHeaderParser$ImageType$onNavigationEvent;)V

    invoke-virtual {v3, v1, v5}, Lo/ImageHeaderParser$ImageType;->onPostMessage([BI)Lo/callAPI;

    move-result-object v1

    goto :goto_1

    .line 77
    :cond_0
    invoke-interface {p1, v3}, Lo/Event$Action;->onNavigationEvent(I)V

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 83
    :catch_0
    :cond_1
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 84
    invoke-interface {p1, v2}, Lo/Event$Action;->onNavigationEvent(I)V

    return-object v1
.end method
