.class public final Lo/isAttachedToWindow$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isAttachedToWindow;
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
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getMinidumpFile;

.field private synthetic onMessageChannelReady:Lo/getSessionFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getSessionFile;Lo/getMinidumpFile;)V
    .locals 0

    .line 10000
    iput-object p1, p0, Lo/isAttachedToWindow$onMessageChannelReady;->onMessageChannelReady:Lo/getSessionFile;

    iput-object p2, p0, Lo/isAttachedToWindow$onMessageChannelReady;->extraCallback:Lo/getMinidumpFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/getCardBackgroundColor;Lo/ǃ;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5326
    :cond_0
    iget v0, p0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_1

    iget v0, p0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_2

    .line 5327
    :cond_1
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 5218
    :cond_2
    iget v0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_7

    .line 8326
    iget v0, p0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_3

    iget v0, p0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_4

    .line 8327
    :cond_3
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 8230
    :cond_4
    iget v0, p0, Lo/getCardBackgroundColor;->asInterface:I

    .line 9326
    iget v1, p0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v1, :cond_5

    iget v1, p0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v1, :cond_6

    .line 9327
    :cond_5
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 9236
    :cond_6
    iget p0, p0, Lo/getCardBackgroundColor;->onTransact:I

    .line 5060
    invoke-static {v0, p0, p1}, Lo/isAttachedToWindow$onMessageChannelReady;->onNavigationEvent(IILo/ǃ;)Z

    move-result p0

    return p0

    .line 6326
    :cond_7
    iget v0, p0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_8

    iget v0, p0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_9

    .line 6327
    :cond_8
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 6236
    :cond_9
    iget v0, p0, Lo/getCardBackgroundColor;->onTransact:I

    .line 7326
    iget v1, p0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v1, :cond_a

    iget v1, p0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v1, :cond_b

    .line 7327
    :cond_a
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 7230
    :cond_b
    iget p0, p0, Lo/getCardBackgroundColor;->asInterface:I

    .line 5058
    invoke-static {v0, p0, p1}, Lo/isAttachedToWindow$onMessageChannelReady;->onNavigationEvent(IILo/ǃ;)Z

    move-result p0

    return p0
.end method

.method public static onNavigationEvent(IILo/ǃ;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x3faaaaab

    if-nez p2, :cond_1

    int-to-float p0, p0

    mul-float p0, p0, v2

    float-to-int p0, p0

    int-to-float p0, p0

    const/high16 p2, 0x45000000    # 2048.0f

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_0

    int-to-float p0, p1

    mul-float p0, p0, v2

    float-to-int p0, p0

    const/16 p1, 0x800

    if-lt p0, p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    int-to-float p0, p0

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 1044
    iget v3, p2, Lo/ǃ;->extraCallback:I

    if-lt p0, v3, :cond_2

    int-to-float p0, p1

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 1045
    iget p1, p2, Lo/ǃ;->onPostMessage:I

    if-lt p0, p1, :cond_2

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 11000
    iget-object v0, p0, Lo/isAttachedToWindow$onMessageChannelReady;->onMessageChannelReady:Lo/getSessionFile;

    .line 12000
    iget-object v0, v0, Lo/getSessionFile;->extraCallback:Ljava/lang/Object;

    .line 11000
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/isAttachedToWindow$onMessageChannelReady;->onMessageChannelReady:Lo/getSessionFile;

    .line 13000
    iget-object v1, v1, Lo/getSessionFile;->onMessageChannelReady:Lo/MissingNativeComponent$1;

    if-eqz v1, :cond_0

    .line 11000
    iget-object v1, p0, Lo/isAttachedToWindow$onMessageChannelReady;->onMessageChannelReady:Lo/getSessionFile;

    .line 14000
    iget-object v1, v1, Lo/getSessionFile;->onMessageChannelReady:Lo/MissingNativeComponent$1;

    .line 11000
    iget-object v2, p0, Lo/isAttachedToWindow$onMessageChannelReady;->extraCallback:Lo/getMinidumpFile;

    invoke-interface {v1, v2}, Lo/MissingNativeComponent$1;->onNavigationEvent(Lo/getMinidumpFile;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
